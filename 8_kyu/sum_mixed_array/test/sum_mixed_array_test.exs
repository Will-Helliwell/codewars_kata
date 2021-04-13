defmodule SumMixedArrayTest do
  use ExUnit.Case

  # test "greets the world" do
  #   assert SumMixedArray.hello() == :world
  # end

  test "returns 0 given an empty array" do
    assert SumMixedArray.sumMin([]) == 0
  end

end
