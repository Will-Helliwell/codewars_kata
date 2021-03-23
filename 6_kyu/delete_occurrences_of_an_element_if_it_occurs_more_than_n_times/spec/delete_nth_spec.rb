require 'delete_nth'

describe "delete_nth" do

  context "given one argument" do
    it "does not modify an empty array or single instances" do
      expect(delete_nth([])).to eq([])
      expect(delete_nth([1])).to eq([1])
      expect(delete_nth([1, 2, 3])).to eq([1, 2, 3])
    end
    it "returns correctly given multiple instances" do
      expect(delete_nth([1, 1])).to eq([1])
      expect(delete_nth([1, 1, 2, 2])).to eq([1, 2])
      expect(delete_nth([3,4,3,4])).to eq([3, 4])
    end

  end

end
