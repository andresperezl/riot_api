require 'riot_api'

module RiotAPI
  module Status
    SHARDS_URL = "http://status.leagueoflegends.com/shards"

    def self.regions(region = nil)
      unless region
        JSON.parse(RestClient.get(SHARDS_URL), symbolize_names: true).map.each{ |r| Region.new(r) }
      else
        Region.decode_json RestClient.get("#{SHARDS_URL}/#{region}")
      end
    end
  end
end