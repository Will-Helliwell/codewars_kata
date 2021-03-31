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
  it "does not highlight multiple correct words" do
    expect(spell_check("the dog", dictionary)).to eq("the dog")
    expect(spell_check("is big", dictionary)).to eq("is big")
  end
  it "highlights multiple incorrect words" do
    expect(spell_check("hello world", dictionary)).to eq("~hello~ ~world~")
    expect(spell_check("I love ruby", dictionary)).to eq("~I~ ~love~ ~ruby~")
  end
  it "correctly highlights a mix of correct and incorrect words" do
    expect(spell_check("hello big dog", dictionary)).to eq("~hello~ big dog")
  end
end
