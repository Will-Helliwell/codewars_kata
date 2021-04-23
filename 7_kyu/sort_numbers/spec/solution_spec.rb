require 'solution'

describe "solution" do
  it "returns an empty array given nil" do
    expect(solution(nil)).to eq([])
  end
  it "returns an empty array given an empty array" do
    expect(solution([])).to eq([])
  end
end
