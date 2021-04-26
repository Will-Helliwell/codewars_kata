require 'persistence'

describe "persistence" do
  it "returns correctly for numbers with zero persistence" do
    expect(persistence(1)).to eq(0)
    expect(persistence(9)).to eq(0)
  end

  it "returns correctly for numbers with a persistence of 1" do
    expect(persistence(15)).to eq(1)
    expect(persistence(24)).to eq(1)
    expect(persistence(31)).to eq(1)
    expect(persistence(91)).to eq(1)
  end

  it "returns correctly for numbers with a persistence > 1" do
    expect(persistence(25)).to eq(2)
    expect(persistence(35)).to eq(2)
    expect(persistence(444)).to eq(3)
    expect(persistence(999)).to eq(4)
  end
end
