require 'string_incrementer'

describe "increment_string" do

  it "appends 1 to a string not ending in an integer" do
    expect(increment_string("foo")).to eq("foo1")
    expect(increment_string("bar")).to eq("bar1")
    expect(increment_string("")).to eq("1")
  end
end
