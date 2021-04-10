require 'string_calculator'

describe "string_calculator" do

  it "evaluates correctly given a single number" do
    expect(string_calculator("3")).to eq(["3", 3])
    expect(string_calculator("5")).to eq(["5", 5])
    expect(string_calculator("123")).to eq(["123", 123])
  end

  it "evaluates correctly given a multiplication sum" do
    expect(string_calculator("3 * 2")).to eq(["3 * 2", 6])
    expect(string_calculator("4 * 12")).to eq(["4 * 12", 48])
  end

  it "evaluates correctly given an addition" do
    expect(string_calculator("3 + 2")).to eq(["3 + 2", 5])
    expect(string_calculator("10 + 50")).to eq(["10 + 50", 60])
  end

  it "evaluates correctly given an subtraction" do
    expect(string_calculator("5 - 3")).to eq(["5 - 3", 2])
    expect(string_calculator("100 - 1")).to eq(["100 - 1", 99])
  end

end
