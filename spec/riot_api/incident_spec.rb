require 'rspec'

require 'riot_api'
require 'riot_api/incident'

module RiotAPI
  describe Incident do

    before do
      @incident = RiotAPI::Region.all[0].services[0].incidents[0]
    end

    it 'should have attributes' do
      expect(Incident.new).to respond_to(:active?, :created_at, :id, :updates)
    end

    it '#updates' do
      expect(@incident.updates).to be_a(Array).and all(be_a(Message))
    end

  end
end