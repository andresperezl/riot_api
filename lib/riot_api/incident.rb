require 'riot_api'
require 'riot_api/utils/parser'
require 'riot_api/message'

module RiotAPI
  class Incident
    attr_reader :active, :created_at, :id, :updates

    def initialize(data = OpenStruct.new)
      @updates = data.updates ? data.updates.map{ |u| Message.parse(u) } : []
    end

    def self.parse(data)
      Parser.parse(data){ |d| Incident.new(d) }
    end
  end
end