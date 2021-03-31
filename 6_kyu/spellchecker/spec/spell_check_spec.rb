require 'spell_check'

dictionary = ["the", "dog", "is", "big"]

describe "spell_check" do
  it "does not highlight a single correct word" do
    expect(spell_check("the", dictionary)).to eq("the")
    expect(spell_check("dog", dictionary)).to eq("dog")
  end
  it "highlights a single incorrect word" do
    expect(spell_check("hello", dictionary)).to eq("~hello~")
    expect(spell_check("bye", dictionary)).to eq("~bye~")
  end
  xit "does not highlight multiple correct words" do
    expect(spell_check("the dog", dictionary)).to eq("the dog")
  end
  xit "highlights multiple incorrect words" do
    expect(spell_check("hello", dictionary)).to eq("~hello~")
  end
end
