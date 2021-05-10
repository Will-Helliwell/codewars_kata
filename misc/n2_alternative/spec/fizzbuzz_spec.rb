require 'fizzbuzz'

describe "fizzbuzz" do

  context "given a single argument" do
    it "returns the number given an insignificant number" do
      expect(fizzbuzz(4)).to eq(4)
      expect(fizzbuzz(13)).to eq(13)
    end

    it "returns fizz given a multiple of three" do
      expect(fizzbuzz(3)).to eq("fizz")
      expect(fizzbuzz(9)).to eq("fizz")
    end

    it "returns buzz given a multiple of five" do
      expect(fizzbuzz(5)).to eq("buzz")
      expect(fizzbuzz(10)).to eq("buzz")
    end

    it "returns fizzbuzz given a multiple of three and five" do
      expect(fizzbuzz(15)).to eq("fizzbuzz")
      expect(fizzbuzz(30)).to eq("fizzbuzz")
    end
  end

  context "given 2 arguments" do
    it "changes the significant numbers and their return values given a hash" do
        expect(fizzbuzz(4, { 4 => "boom" })).to eq("boom")
        expect(fizzbuzz(7, { 4 => "boom", 7 => "shakalaka" })).to eq("shakalaka")
        expect(fizzbuzz(28, { 4 => "boom", 7 => "shakalaka" })).to eq("boomshakalaka")
    end
  end
end
