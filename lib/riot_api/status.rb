require 'riot_api'

module RiotAPI
  module Status
    SHARDS_URL = "http://status.leagueoflegends.com/shards"

    def self.regions(regions = nil)
      if regions.nil?
        JSON.parse(RestClient.get(SHARDS_URL), symbolize_names: true).map{ |r| Region.new(r) }
      elsif regions.is_a?(Array)
        regions.map do |region|
          Region.decode_json RestClient.get("#{SHARDS_URL}/#{region}")
        end
      else
        case regions
        when "all"
          JSON.parse(
              RestClient.get("http://status.leagueoflegends.com/shards"),
              symbolize_names: true).map.each{ |r| r[:slug] }.map do |slug|
            Region.decode_json RestClient.get("#{SHARDS_URL}/#{slug}")
          end
        else
          Region.decode_json RestClient.get("#{SHARDS_URL}/#{regions}")
        end
      end
    end
  end
end