require 'spell_check'

dictionary = ["the", "dog", "is", "big"]

describe "spell_check" do

  context "Given lower case strings" do
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
      expect(spell_check("i love ruby", dictionary)).to eq("~i~ ~love~ ~ruby~")
    end
    it "correctly highlights a mix of correct and incorrect words" do
      expect(spell_check("hello big dog", dictionary)).to eq("~hello~ big dog")
    end
  end

  context "edge cases" do
    it "does not modify an empty string" do
      expect(spell_check("", dictionary)).to eq("")
    end
    it "returns an error given a non-string argument" do
      expect{spell_check(123, dictionary)}.to raise_error(ArgumentError, "Expect: (string, dictionary_array)")
      expect{spell_check(true, dictionary)}.to raise_error(ArgumentError, "Expect: (string, dictionary_array)")
      expect{spell_check(["hello"], dictionary)}.to raise_error(ArgumentError, "Expect: (string, dictionary_array)")
      expect{spell_check({"key": "value"}, dictionary)}.to raise_error(ArgumentError, "Expect: (string, dictionary_array)")
    end
  end

end
