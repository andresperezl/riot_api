require 'rspec'
require 'riot_api'
require 'riot_api/region'

module RiotAPI
  describe Region do
    it 'must have the correct attributes' do
      region = Region.new
      expect(region).to respond_to(:hostname, :locales, :name, :region_tag, :slug)
    end

    describe '#all' do
      it 'should return an array of regions' do
        expect(Region.all).to be_a(Array).and all(be_a Region)
      end
    end

    describe '#services' do
      before do
        @region = Region.all[0]
      end
      it 'should return a array of services' do
        expect(@region.services).to be_a(Array).and all(be_a Service)
      end
    end
  end
end