require 'up_array'

describe "up_array" do
  it "returns correctly when array does not end in 9" do
    expect(up_array([2])).to eq([3])
    expect(up_array([5])).to eq([6])
    expect(up_array([1,2])).to eq([1,3])
    expect(up_array([4,5,6])).to eq([4,5,7])
  end
end
