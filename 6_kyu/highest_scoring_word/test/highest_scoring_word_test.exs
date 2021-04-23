defmodule HighestScoringWordTest do
  use ExUnit.Case
  # doctest HighestScoringWord

  test "given one word, it returns the word" do
    assert HighestScoringWord.high("a") == "a"
    assert HighestScoringWord.high("hello") == "hello"
  end

  test "given multiple words, it returns the highest scoring word" do
    assert HighestScoringWord.high("take two bintang and a dance please") == "bintang"
  end

end
