class FlyBoardsController < ApplicationController
  def index
    @planes = Plane.all
  end
end
