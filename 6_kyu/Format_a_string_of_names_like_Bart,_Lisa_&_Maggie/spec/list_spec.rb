require 'list'

describe "list" do

  it "returns an empty string given an empty array" do
    expect(list([])).to eq("")
  end

  it "returns a the name given a single name" do
    expect(list([{name: "bob"}])).to eq("bob")
    expect(list([{name: "steve"}])).to eq("steve")
  end

  it "returns 2 names separated by ampersand given 2 names" do
    expect(list([{ name: "bob" }, { name: "lisa" }])).to eq("bob & lisa")
    expect(list([{ name: "ken" }, { name: "roger" }])).to eq("ken & roger")
  end

  it "returns 3+ names separated by ampersand given 2 names" do
    # expect(list([{ name: "bob" }, { name: "lisa" }, { name: "quentin" }])).to eq("bob, lisa & quentin")
    expect(list([{ name: "ken" }, { name: "roger" }, { name: "bob" }, { name: "lisa" }, { name: "quentin" }])).to eq("ken, roger, bob, lisa & quentin")
  end
end
