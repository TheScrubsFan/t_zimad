class PlanesController < ApplicationController
  def update
    Plane.update params['id'], plane_params.to_a.flatten
    Requesters::TakeoffRequester.takeoff

    redirect_to root_path and return
  end

  def hangar
    Plane.update params['id'], plane_params.to_a.flatten
  end

  private

  def plane_params
    params.require(:plane)
          .permit(:id, :state)
          .to_h
  end
end
