require 'rspec'

module RiotAPI
  module Status
    describe Incident do

      before do
        @incident = RiotAPI::Status.regions('euw').services.find{ |s| s.incidents.size > 0 }.incidents.first
      end

      it 'should have attributes' do
        expect(@incident.to_h).to include(:active, :created_at, :id, :updates)
      end

      it '#updates' do
        expect(@incident.updates).to be_a(Google::Protobuf::RepeatedField).and all(be_a(Message))
      end

    end
  end
end