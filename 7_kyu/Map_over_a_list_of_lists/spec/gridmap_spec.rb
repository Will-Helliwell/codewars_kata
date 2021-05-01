require 'gridmap'

describe "gridmap" do
  it "returns correctly" do
    expect( gridmap( [[1,2,3],[4,5,6]] ) { |n| n + 1 } ).to eq([[2,3,4],[5,6,7]])
  end
end
