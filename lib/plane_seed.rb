require 'progress_bar'

class PlaneSeed
  def self.seed
    range = (1..6)
    connector = RedisConnector.new 'planes'
    pb = ProgressBar.new range.count

    range.each do |number|
      plane = {
        state: :hangar,
        number: number
      }

      connector.set number, plane.to_a.flatten
      pb.increment!
    end
  end
end
