require 'spell_check'

dictionary = ["the", "dog", "is", "big"]

describe "spell_check" do
  it "does not highlight a single correct word" do
    expect(spell_check("the", dictionary)).to eq("the")
  end
  it "highlights a single incorrect word" do
    expect(spell_check("hello", dictionary)).to eq("~hello~")
  end
end
