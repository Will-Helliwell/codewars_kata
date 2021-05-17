require 'largest_pair_sum'

describe "largest_pair_sum" do
    it "returns correctly" do
        expect(largest_pair_sum([10, 14, 2, 23, 19])).to eq(42)
        expect(largest_pair_sum([99, 2, 2, 23, 19])).to eq(118)
    end
end