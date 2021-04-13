defmodule HighestScoringWordTest do
  use ExUnit.Case
  # doctest HighestScoringWord

  test "given one word, it returns the word" do
    assert HighestScoringWord.high("a") == "a"
    assert HighestScoringWord.high("hello") == "hello"
  end


end
