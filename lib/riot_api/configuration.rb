
module RiotAPI
  class Configuration
    attr_accessor :api_key, :region

    def initialize
      @api_key = ENV['RIOT_API_KEY']
      @region = 'na'
    end

  end
end