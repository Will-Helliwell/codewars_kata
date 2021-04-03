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

  it "Returns correctly given 3 names" do
    expect(likes(["Max", "John", "Mark"])).to eq("Max, John and Mark like this")
    expect(likes(["Bob", "Kevin", "Steve"])).to eq("Bob, Kevin and Steve like this")
  end

  it "Returns correctly given 4 names" do
    expect(likes(["Alex", "Jacob", "Mark", "Max"])).to eq("Alex, Jacob and 2 others like this")
    expect(likes(["Bob", "Kevin", "Steve", "Sarah"])).to eq("Bob, Kevin and 2 others like this")
  end

end
