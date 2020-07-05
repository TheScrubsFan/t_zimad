class Plane
  class << self
    def connector
      @connector ||= RedisConnector.new('planes')
    end

    def all
      connector.get_all.sort_by { |plane| plane['number'] }
    end
  end
end
