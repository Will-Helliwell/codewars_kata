require 'solution'

describe "solution" do
  it "returns an empty array given nil" do
    expect(solution(nil)).to eq([])
  end
  it "returns an empty array given an empty array" do
    expect(solution([])).to eq([])
  end
  it "returns an empty array given an empty array" do
    expect(solution([])).to eq([])
  end
  it "returns the original array given a sorted array" do
    expect(solution([1])).to eq([1])
    expect(solution([2])).to eq([2])
    expect(solution([1,2,3])).to eq([1,2,3])
    expect(solution([4,5,6])).to eq([4,5,6])
  end
  it "returns a sorted array given a non-sorted array" do
    expect(solution([3,2,1])).to eq([1,2,3])
    expect(solution([1, 5, 2, 33, 3, 1])).to eq([1, 1, 2, 3, 5, 33])
  end
end
