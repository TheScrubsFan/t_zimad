require 'redis'

class RedisConnector < RedisConnectorBase
  def initialize(namespace)
    @namespace = namespace
  end

  def get_all
    keys = connection.keys "#{@namespace}:*"

    keys.map do |key|
      get_without_namespace key
    end
  end

  def get(key)
    connection.hgetall "#{@namespace}:#{key}"
  end

  def get_without_namespace(key)
    connection.hgetall key
  end

  def set(key, *attrs)
    connection.hmset "#{@namespace}:#{key}", *(attrs.flatten)
  end

  def clean(key, field)
    connection.hdel "#{@namespace}:#{key}", field
  end
end
