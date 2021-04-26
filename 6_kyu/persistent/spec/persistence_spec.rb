require 'persistence'

describe "persistence" do
  it "returns correctly for numbers with zero persistence" do
    expect(persistence(1)).to eq(0)
    expect(persistence(9)).to eq(0)
  end
end
