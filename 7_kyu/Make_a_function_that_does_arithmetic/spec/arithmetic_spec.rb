require 'arithmetic'

describe "arithmetic" do
  it "returns correctly given addition" do
    expect(arithmetic(5, 2, "add")).to eq(7)
    expect(arithmetic(10, 4, "add")).to eq(14)
  end

  it "returns correctly given subtraction" do
    expect(arithmetic(7, 3, "subtract")).to eq(4)
    expect(arithmetic(10, 4, "subtract")).to eq(6)
  end
end
