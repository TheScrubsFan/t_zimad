class PlanesController < ApplicationController
  def update
    Plane.update params['id'], plane_params.to_a.flatten
    TakeoffRequester.takeoff params['id']

    redirect_to root_path and return
  end

  private

  def plane_params
    params.require(:plane)
          .permit(:number, :state)
          .to_h
  end
end
