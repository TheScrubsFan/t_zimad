class Api::PlanesController < Api::ApplicationController
  protect_from_forgery with: :null_session

  def hangar
    Plane.update params['plane_id'], plane_params.to_a.flatten
    ActionCable.server.broadcast 'plane_states', plane: Plane.find_by_id(params['plane_id'])
    PlaneQueue.recheck
  end

  private

  def plane_params
    params.require(:plane)
          .permit(:number, :state)
          .to_h
  end
end
