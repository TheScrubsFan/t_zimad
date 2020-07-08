class PlaneStatesChannel < ApplicationCable::Channel
  def subscribed
     stream_from "plane_states"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
