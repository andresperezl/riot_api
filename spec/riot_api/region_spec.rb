require 'rspec'

module RiotAPI
  describe Region do
    before do
      @region = RiotAPI::Status.regions.first
    end

    it 'must have the correct attributes' do
      expect(@region.to_h).to include(:hostname, :locales, :name, :region_tag, :slug)
    end

    describe '#services' do
      it 'should return a array of services' do
        expect(@region.services).to be_a(Google::Protobuf::RepeatedField).and all(be_a Service)
      end
    end
  end
end