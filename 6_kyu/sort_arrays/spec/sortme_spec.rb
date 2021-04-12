require 'sortme'

describe "sortme" do
  it "can sort an array of lower or upper-case case words" do
    expect(sortme(["zoo", "is", "closed"])).to eq(["closed", "is", "zoo"])
    expect(sortme(["Zoo", "Is", "Closed"])).to eq(["Closed", "Is", "Zoo"])
  end

  it "can sort an array of mixed lower and upper case letters" do
    expect(sortme(["a", "B", "c"])).to eq(["a", "B", "c"])
  end

  it "can sort an array of mixed lower and upper case words" do
    expect(sortme(["Zoo", "Is", "closed"])).to eq(["closed", "Is", "Zoo"])
  end

  it "can sort an array of words with non-first letters capitalized" do
    expect(sortme(["ZoO", "IS", "clOsEd"])).to eq(["clOsEd", "IS", "ZoO"])
  end

end
