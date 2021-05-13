require 'sumFracts'

describe "sumFracts" do
  it "returns a single integer given an integer in rational form" do
    expect(sumFracts([[1,1]])).to eq(1)
    expect(sumFracts([[10,5]])).to eq(2)
    expect(sumFracts([[20,4]])).to eq(5)
  end
end
