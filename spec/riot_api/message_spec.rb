require 'rspec'

module RiotAPI
  describe Message do

    it 'should have attributes' do
      expect(Message.new).to respond_to(:author, :content, :created_at, :id, :severity, :translations, :updated_at)
    end

    describe "#translations" do
      before do
        @msg  = RiotAPI::Region.all.find{ |r| r.slug == 'euw' }.services[0].incidents[0].updates[0]
      end
      it 'should contains an Array of translations' do
        expect(@msg.translations).to be_a(Array).and all(be_a(Message::Translation))
      end
    end
  end
end