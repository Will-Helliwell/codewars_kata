require 'max_sequence'

describe "max sequence" do
  it "returns 0 given an empty array" do
    expect(max_sequence([])).to eq(0)
  end
  it "returns 0 given an array of negative integers" do
    expect(max_sequence([-1,-2,-3])).to eq(0)
    expect(max_sequence([0,-1,-2,-3,-1000])).to eq(0)
  end
  it "returns the sum given an array of positive numbers" do
    expect(max_sequence([1,2,3])).to eq(6)
    expect(max_sequence([0,5,100,1000])).to eq(1105)
  end
end
