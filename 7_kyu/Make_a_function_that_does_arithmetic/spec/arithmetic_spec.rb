require 'arithmetic'

describe "arithmetic" do
  it "returns correctly given addition" do
    expect(arithmetic(5, 2, "add")).to eq(7)
    expect(arithmetic(10, 4, "add")).to eq(14)
  end
end
