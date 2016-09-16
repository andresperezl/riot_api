require 'rspec'

module RiotAPI
  describe Status do
    describe "#regions" do
      it "should return an array of regions" do
        expect(RiotAPI::Status.regions).to be_a(Array).and all(be_a(RiotAPI::Region))
      end

      it "should return just one regions" do
        expect(RiotAPI::Status.regions('na')).to be_a(RiotAPI::Region)
      end
    end
  end
end