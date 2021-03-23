require 'delete_nth'

describe "delete_nth" do

  context "given one argument" do
    it "does not modify an empty array" do
      expect(delete_nth([])).to eq([])
    end

  end

end
