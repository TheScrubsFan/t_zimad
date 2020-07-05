require 'redis'

class RedisConnector
  class << self
    def get(key)
      connection.hgetall("#{namespace}:#{key}")
    end

    def set(key, *attrs)
      connection.hmset("#{namespace}:#{key}", *(attrs.flatten))
    end

    def clean(key, field)
      connection.hdel("#{namespace}:#{key}", field)
    end
  end

  private

  class << self
    def connection
      @connection ||= Redis.new(connect_options)
    end

    def namespace
      'plane'
    end
  end
end
