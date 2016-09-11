require 'rest-client'
require 'json'

require 'riot_api'
require 'riot_api/configuration'
require 'riot_api/region'

module RiotAPI
  class Client

    attr_accessor :config

    def initialize(config = RiotAPI.configuration)
      @config = config
    end

    def api_key
      config.api_key
    end

    def regions

    end
  end
end