require 'max_sequence'

describe "max sequence" do
  it "returns 0 given an empty array" do
    expect(max_sequence([])).to eq(0)
  end
  it "returns 0 given an array of negative integers" do
    expect(max_sequence([-1,-2,-3])).to eq(0)
  end
end
