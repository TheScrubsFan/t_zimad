class PlaneQueue
  class << self
    def update(id)
      queue_number = last_number + 1
      params = params_hash id, :waiting, queue_number

      Plane.update id, params.to_a.flatten
    end

    def last_number
      Plane.all
           .max_by { |plane| plane['queue_number'].to_i }
           .values_at('queue_number')
           .first
           .to_i
    end

    def recheck
      queue.each do |plane|
        if plane['queue_number'].to_i == 1
          takeoff plane['number']

          next
        end

        queue_number = plane['queue_number'].to_i - 1
        params = params_hash plane['number'], :waiting, queue_number

        Plane.update plane['number'], params.to_a.flatten
      end
    end

    def queue
      Plane.all
           .select { |plane| plane['queue_number'].to_i.positive? }
           .sort_by { |plane| plane['queue_number'] }
    end

    def takeoff(id)
      params = params_hash id, :takeoff, 0

      Plane.update id, params.to_a.flatten
      TakeoffRequester.takeoff id
    end

    def params_hash(number, state, queue_number)
      {
        number: number,
        state: state,
        queue_number: queue_number
      }
    end
  end
end
