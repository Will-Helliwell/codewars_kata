require 'likes'

describe "likes" do

  it "Returns correctly given a single name" do
    expect(likes(["Peter"])).to eq("Peter likes this")
    expect(likes(["Bob"])).to eq("Bob likes this")
  end

end
