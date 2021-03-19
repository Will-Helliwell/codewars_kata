require 'string_incrementer'

describe "increment_string" do

  it "appends 1 to a string not ending in an integer" do
    expect(increment_string("foo")).to eq("foo1")
    expect(increment_string("bar")).to eq("bar1")
    expect(increment_string("")).to eq("1")
  end

  it "increments the final number on a string  ending in an integer" do
    expect(increment_string("foo1")).to eq("foo2")
    expect(increment_string("foo13742234")).to eq("foo13742235")
    expect(increment_string("bar324879")).to eq("bar324880")
    expect(increment_string("123foo1")).to eq("123foo2")

  end
end
