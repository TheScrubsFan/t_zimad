class Plane
  include RedisConnector

  class << self
    def all
      RedisConnector.get 'plane'
    end
  end
end
