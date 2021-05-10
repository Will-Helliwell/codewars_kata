require 'fizzbuzz'

describe "fizzbuzz" do
  it "returns the number given an insignificant number" do
    expect(fizzbuzz(4)).to eq(4)
    expect(fizzbuzz(13)).to eq(13)
  end

  it "returns fizz given a multiple of three" do
    expect(fizzbuzz(3)).to eq("fizz")
    expect(fizzbuzz(9)).to eq("fizz")
  end
end
