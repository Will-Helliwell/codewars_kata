defmodule SumMixedArrayTest do
  use ExUnit.Case

  test "returns 0 given an empty array" do
    assert SumMixedArray.sumMin([]) == 0
  end

  test "returns correctly given a single integer" do
    assert SumMixedArray.sumMin([1]) == 1
    assert SumMixedArray.sumMin([2]) == 2
  end

  test "returns correctly given a single integer-string" do
    assert SumMixedArray.sumMin(["1"]) == 1
  end

end
