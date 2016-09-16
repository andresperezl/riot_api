require 'rspec'

module RiotAPI
  describe Service do
    before do
      @service = RiotAPI::Status.regions('euw').services.first
    end

    it 'should have the right sttributes' do
      expect(@service.to_h).to include(:slug, :incidents, :name, :status)
    end

    describe '#incidents' do
      it 'should be an array of incidents' do
        expect(@service.incidents).to be_a(Google::Protobuf::RepeatedField).and all(be_a(Incident))
      end
    end
  end
end