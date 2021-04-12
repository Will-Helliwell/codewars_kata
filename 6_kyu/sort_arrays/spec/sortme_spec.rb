require 'sortme'

describe "sortme" do
  it "can sort an array of lower or upper-case case words" do
    expect(sortme(["zoo", "is", "closed"])).to eq(["closed", "is", "zoo"])
    expect(sortme(["Zoo", "Is", "Closed"])).to eq(["Closed", "Is", "Zoo"])
  end

  xit "can sort an array of lower case letters" do
    expect(sortme(["zoo", "is", "closed"])).to eq(["closed", "is", "zoo"])
  end
end
