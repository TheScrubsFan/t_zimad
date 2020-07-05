class FlyBoardController < ApplicationController
  def index
    @planes = Plane.all
  end
end
