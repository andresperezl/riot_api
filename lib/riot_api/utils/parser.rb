
module RiotAPI
  module Parser
    def self.parse(data, &block)
      if data.is_a? String
        data = JSON.parse(data, object_class: OpenStruct)
      elsif data.is_a? Hash
        data = OpenStruct.new(data)
      else
        raise ArgumentError, 'Can only parse Hash and String in JSON format'
      end

      block.call(data)

    end
  end
end