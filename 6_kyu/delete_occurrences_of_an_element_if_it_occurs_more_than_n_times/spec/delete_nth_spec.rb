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

  context "given two arguments" do
    it "does not alter if given an array of 1" do
      expect(delete_nth([1], 2)).to eq([1])
    end
    it "does not alter given a longer array and if fewer instances than the limit" do
      expect(delete_nth([1, 1], 2)).to eq([1, 1])
      expect(delete_nth([1, 1, 1, 2, 2, 2], 2)).to eq([1, 1, 2, 2])
      expect(delete_nth([3, 4, 5, 5, 4, 3, 3, 4, 5], 2)).to eq([3, 4, 5, 5, 4, 3])
    end
  end

end
