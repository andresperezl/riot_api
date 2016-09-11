module RiotAPI
  class APIError < StandardError
    attr_accessor :code

    def initialize(code)
      @code = code
    end

    def message
      case code
        when 400
          ""
      end

    end

  end
end