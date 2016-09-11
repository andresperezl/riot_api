require 'rspec'

require 'riot_api'
require 'riot_api/service'

module RiotAPI
  describe Service do
    before do
      @service = RiotAPI::Region.all[0].services[0]
    end

    it 'should have the right sttributes' do
      expect(Service.new).to respond_to(:slug, :incidents, :name, :status)
    end

    describe '#incidents' do
      it 'should be an array of incidents' do
        expect(@service.incidents).to be_a(Array).and all(be_a(Incident))
      end
    end


  end
end