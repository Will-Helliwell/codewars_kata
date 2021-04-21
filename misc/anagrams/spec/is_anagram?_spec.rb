require 'is_anagram?'

describe "is_anagram?" do
  it "returns true given matching single_letter words" do
    expect(is_anagram?("a", "a")).to eq(true)
    expect(is_anagram?("b", "b")).to eq(true)
  end
end
