require 'likes'

describe "likes" do

  it "Returns correctly given a single name" do
    expect(likes(["Peter"])).to eq("Peter likes this")
    expect(likes(["Bob"])).to eq("Bob likes this")
  end

  it "Returns correctly given 2 names" do
    expect(likes(["Jacob", "Alex"])).to eq("Jacob and Alex like this")
    expect(likes(["Bob", "Kevin"])).to eq("Bob and Kevin like this")
  end

end
