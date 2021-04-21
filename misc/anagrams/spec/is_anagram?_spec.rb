require 'is_anagram?'

describe "is_anagram?" do

  context "given strings of length <=1" do
    it "returns true given matching strings" do
      expect(is_anagram?("", "")).to eq(true)
      expect(is_anagram?("a", "a")).to eq(true)
      expect(is_anagram?("b", "b")).to eq(true)
    end
    it "returns false given non-matching strings" do
      expect(is_anagram?("", "a")).to eq(false)
      expect(is_anagram?("a", "b")).to eq(false)
      expect(is_anagram?("d", "e")).to eq(false)
    end
  end

  context "given strings of length >1" do
    it "returns true if strings have matching letters" do
      expect(is_anagram?("abc", "cba")).to eq(true)
      expect(is_anagram?("mrman", "mrnam")).to eq(true)
    end

    it "ignores spaces" do
      expect(is_anagram?("a b c", "cba")).to eq(true)
    end

    it "ignores capitalisation" do
      expect(is_anagram?("ABC", "cba")).to eq(true)
    end
  end

  context "edge cases" do
    it "returns ArgumentError given at least one non-string" do
      expect{is_anagram?(1, "hi")}.to raise_error(ArgumentError, "Argument format: (string, string)")
      expect{is_anagram?("hi", true)}.to raise_error(ArgumentError, "Argument format: (string, string)")
      expect{is_anagram?(1, ["hi"])}.to raise_error(ArgumentError, "Argument format: (string, string)")
    end
  end
end
