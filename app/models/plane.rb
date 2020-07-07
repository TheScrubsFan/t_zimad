class Plane
  class << self
    def connector
      @connector ||= RedisConnector.new('planes')
    end

    def all
      connector.get_all.sort_by { |plane| plane['number'] }
    end

    def find_by_id(id)
      connector.get id
    end

    def update(id, *attrs)
      connector.set id, *attrs
    end

    def runway_busy?
      all.select { |plane| plane['state'] == 'takeoff' }.any?
    end
  end
end
