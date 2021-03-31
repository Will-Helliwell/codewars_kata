require 'spell_check'

dictionary = ["the", "dog", "is", "big"]

describe "spell_check" do
  it "does not highlight a single corrext word" do
    expect(spell_check("the", dictionary)).to eq("the")
  end
end
