require 'redis'

class RedisConnectorBase
  def initialize; end

  def connection
    @connection ||= Redis.new(host: 'localhost')
  end
end
