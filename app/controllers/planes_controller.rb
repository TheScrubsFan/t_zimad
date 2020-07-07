class PlanesController < ApplicationController
  def update
    if Plane.runway_busy?
      PlaneQueue.update params['id']
    else
      Plane.update params['id'], plane_params.to_a.flatten
      TakeoffRequester.takeoff params['id']
    end

    redirect_to root_path and return
  end

  private

  def plane_params
    params.require(:plane)
          .permit(:number, :state)
          .to_h
  end
end
