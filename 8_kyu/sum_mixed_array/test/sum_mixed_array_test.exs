defmodule SumMixedArrayTest do
  use ExUnit.Case

  # test "greets the world" do
  #   assert SumMixedArray.hello() == :world
  # end

  test "returns 0 given an empty array" do
    assert SumMixedArray.sumMin([]) == 0
  end

  test "returns correctly given a single integer" do
    assert SumMixedArray.sumMin([1]) == 1
    assert SumMixedArray.sumMin([2]) == 2
  end

end
