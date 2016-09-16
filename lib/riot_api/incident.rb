require 'riot_api'
require 'riot_api/utils/parser'
require 'riot_api/message'

module RiotAPI
  class Incident
    attr_reader :created_at, :id, :updates

    def initialize(data = OpenStruct.new)
      @active = data.active
      @id = id
      @created_at = data.created_at
      @updates = data.updates ? data.updates.map{ |u| Message.parse(u) } : []
    end

    def active?
      @active
    end

    def self.parse(data)
      Parser.parse(data){ |d| Incident.new(d) }
    end
  end
end