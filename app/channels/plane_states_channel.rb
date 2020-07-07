class PlanestatesChannel < ApplicationCable::Channel
  def follow
    stream_from 'plane_states'
  end
end
