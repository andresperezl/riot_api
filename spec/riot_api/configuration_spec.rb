require 'rspec'
require 'riot_api'

module RiotAPI
  describe Configuration do
    describe '#api_key' do
      it 'default value is enviroment API_KEY' do
        expect(Configuration.new.api_key).to be(ENV['API_KEY'])
      end

      describe '#api_key=' do
        it 'can set value' do
          config = Configuration.new
          config.api_key = 'API_KEY'
          expect(config.api_key).to eq('API_KEY')
        end
      end
    end
  end
end