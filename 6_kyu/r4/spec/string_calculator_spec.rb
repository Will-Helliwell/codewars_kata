require 'string_calculator'

describe "string_calculator" do

  it "evaluates correctly given a single number" do
    expect(string_calculator("3")).to eq(["3", 3])
  end

end
