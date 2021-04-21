require 'is_anagram?'

describe "is_anagram?" do
  it "returns true given matching single_letter words" do
    expect(is_anagram?("a", "a")).to eq(true)
    expect(is_anagram?("b", "b")).to eq(true)
  end
  it "returns false given non-matching single_letter words" do
    expect(is_anagram?("a", "b")).to eq(false)
    expect(is_anagram?("d", "e")).to eq(false)
  end
end
