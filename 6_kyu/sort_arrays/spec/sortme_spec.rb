require 'sortme'

describe "sortme" do
  it "can sort an array of lower case words" do
    expect(sortme(["zoo", "is", "closed"])).to eq(["closed", "is", "zoo"])
  end
end
