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
  end

end
