require 'riot_api'
require 'riot_api/utils/parser'
module RiotAPI
  class Message
    attr_reader :author, :content, :created_at, :id, :severity, :translations, :updated_at

    Translation = Struct.new(:content, :locale, :updated_at)

    def initialize(data = OpenStruct.new)
      @author = data.author
      @content = data.content
      @created_at = data.created_at
      @id = data.id
      @severity = data.severity
      @updated_at = data.updated_at
      @translations = data.translations ? data.translations.map{ |t| Translation.new(t) } : []
    end

    def self.parse(data)
      Parser.parse(data){ |d| Message.new(d) }
    end

  end
end