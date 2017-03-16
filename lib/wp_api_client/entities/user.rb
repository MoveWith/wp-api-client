module WpApiClient
  module Entities
    class User < Base
      alias :user :resource

      def self.represents?(json)
        json.dig('_links', 'collection') and json['_links']['collection'].first['href'] =~ /#{Regexp.escape(WpApiClient.configuration.endpoint)}\/users/
      end
      
    end
  end
end
