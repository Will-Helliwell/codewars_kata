require 'up_array'

describe "up_array" do
  it "returns correctly when array does not end in 9" do
    expect(up_array([2])).to eq([3])
    expect(up_array([5])).to eq([6])
    expect(up_array([1,2])).to eq([1,3])
    expect(up_array([4,5,6])).to eq([4,5,7])
  end

  it "returns correctly when only the final integer is 9" do
    expect(up_array([2,6,9])).to eq([2,7,0])
  end

  it "returns there are multiple consescutive nines at the end of the array" do
    expect(up_array([1,9,9,9])).to eq([2,0,0,0])
  end

  it "returns correctly when all integers are 9" do
    expect(up_array([9])).to eq([1,0])
    expect(up_array([9,9,9,9])).to eq([1,0,0,0,0])
  end

end
