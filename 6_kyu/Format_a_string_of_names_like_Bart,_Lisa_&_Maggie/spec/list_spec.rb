require 'list'

describe "list" do

  it "returns an empty string given an empty array" do
    expect(list([])).to eq("")
  end

  it "returns a the name given a single name" do
    expect(list([{name: "bob"}])).to eq("bob")
    expect(list([{name: "steve"}])).to eq("steve")
  end
end
