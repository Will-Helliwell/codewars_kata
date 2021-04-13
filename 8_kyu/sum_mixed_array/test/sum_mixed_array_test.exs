defmodule SumMixedArrayTest do
  use ExUnit.Case

  test "returns 0 given an empty array" do
    assert SumMixedArray.sumMin([]) == 0
  end

  test "returns correctly given a single integer" do
    assert SumMixedArray.sumMin([1]) == 1
    assert SumMixedArray.sumMin([2]) == 2
  end

  test "returns correctly given a single integer-strings" do
    assert SumMixedArray.sumMin(["1"]) == 1
    assert SumMixedArray.sumMin(["3479"]) == 3479
  end

  test "returns correctly given multiple integers or integer-strings" do
    assert SumMixedArray.sumMin(["1", "2", "5"]) == 8
    assert SumMixedArray.sumMin([1, 2, 3]) == 6
    assert SumMixedArray.sumMin([1, "4", 7]) == 12

  end

end
