require 'riot_api/version'
require 'riot_api/configuration'
require 'riot_api/client'
require 'riot_api/region'
require 'riot_api/service'
require 'riot_api/incident'
require 'riot_api/utils/parser'
require 'riot_api/message'

begin
  require 'byebug'
rescue

end

# This module's static methods are the entry point for using the Riot API client.
module RiotAPI
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
