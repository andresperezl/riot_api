require 'ostruct'
require 'json'
require 'rest-client'

require 'riot_api'
require 'riot_api/utils/parser'

module RiotAPI
  class Region

    SHARDS_URL = 'http://status.leagueoflegends.com/shards'

    attr_reader :region_tag, :locales, :name, :hostname, :slug

    def initialize(data = OpenStruct.new)
      @region_tag = data.region_tag
      @locales = data.locales
      @name = data.name
      @hostname = data.hostname
      @slug = data.slug
    end

    def self.parse(data)
      Parser.parse(data){ |d| Region.new(d) }
    end

    def self.all
      response = RestClient.get SHARDS_URL
      JSON.parse(response).map{ |s| Region.parse(s) }
    end

    def services
      response = RestClient.get "#{SHARDS_URL}/#{slug}"
      JSON.parse(response.body)['services'].map{ |s| Service.parse(s) }
    end

    alias_method :tag, :region_tag
    alias_method :short, :slug
  end
end