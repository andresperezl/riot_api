require 'rspec'
require 'spec_helper'
require 'riot_api'

describe RiotAPI do
  describe '#configure' do
    before :each do
      RiotAPI.configure do |config|
        config.api_key = 'API_KEY'
      end
    end

    it 'api_key must be the configured value' do
      api_key = RiotAPI::Client.new.api_key
      expect(api_key).to eq('API_KEY')
    end

    after :each do
      RiotAPI.reset
    end
  end
end
