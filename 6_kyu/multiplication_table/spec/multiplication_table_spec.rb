require 'multiplication_table'

describe "multiplication_table" do
  it "returns correctly given 3" do
    expect(multiplication_table(3)).to eq([[1,2,3],[2,4,6],[3,6,9]])
  end
end
