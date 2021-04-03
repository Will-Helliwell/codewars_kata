require 'likes'

describe "likes" do

  it "Returns correctly given \"Peter\"" do
    expect(likes(["Peter"])).to eq("Peter likes this")
  end

end
