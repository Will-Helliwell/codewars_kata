require 'largest_pair_sum'

describe "largest_pair_sum" do
    it "returns correctly for positive numbers" do
        expect(largest_pair_sum([10, 14, 2, 23, 19])).to eq(42)
        expect(largest_pair_sum([99, 2, 2, 23, 19])).to eq(122)
    end

    it "returns correctly for negative numbers" do
        expect(largest_pair_sum([-10, -8, -16, -18, -19])).to eq(-18)
    end
end