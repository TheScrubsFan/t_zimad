module Requesters
  class TakeoffRequester
    TAKEOFF_URL = 'localhost:9292/takeoff'

    class << self
      def rest_client_request(url, params = {}, method = :get)
        # for check request params
        # raise URI.unescape(params.to_param).inspect

        RestClient::Request.execute(
          method: method,
          url: url,
          headers: {
            params: params
          }
        )
      rescue RestClient::NotFound
        nil
      end

      def takeoff
        rest_client_request TAKEOFF_URL, {}, :post
      end
    end
  end
end
