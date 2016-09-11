require 'riot_api'
require 'riot_api/incident'

module RiotAPI
  class Service
    attr_reader :incidents, :slug, :name, :status

    def initialize(data = OpenStruct.new)
      @incidents =  data.incidents ? data.incidents.map{ |i| Incident.parse(i) } : []
      @slug = data.slug
      @name = data.name
      @status = data.status
    end

    def self.parse(data)
      Parser.parse(data){ |d| Service.new(d) }
    end

  end
end