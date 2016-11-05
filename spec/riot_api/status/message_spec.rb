require 'rspec'

module RiotAPI
  module Status
    describe Message do

      before do
        @msg  = RiotAPI::Status.regions('euw').services.find{ |s| s.incidents.size > 0 }.incidents.first.updates.first
      end

      it 'should have attributes' do
        expect(@msg.to_h).to include(:author, :content, :created_at, :id, :severity, :translations, :updated_at)
      end

      describe "#translations" do
        it 'should contains an Array of translations' do
          expect(@msg.translations).to be_a(Google::Protobuf::RepeatedField).and all(be_a(Translation))
        end
      end
    end
  end
end