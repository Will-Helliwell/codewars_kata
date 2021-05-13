require 'sumFracts'

describe "sumFracts" do
  xit "returns a single integer given an integer in rational form" do
    expect(sumFracts([[1,1]])).to eq(1)
    expect(sumFracts([[10,5]])).to eq(2)
    expect(sumFracts([[20,4]])).to eq(5)
  end

  it "returns the rational given an irreducible rational" do
    expect(sumFracts([[2,5]])).to eq([2,5])
    expect(sumFracts([[3,7]])).to eq([3,7])
    expect(sumFracts([[4,17]])).to eq([4,17])
    expect(sumFracts([[3,13]])).to eq([3,13])
  end
end
