defmodule RemoveExclamationMarksTest do
  use ExUnit.Case
  doctest RemoveExclamationMarks

  # test "greets the world" do
  #   assert RemoveExclamationMarks.hello() == :world
  # end

  test "does not modify a string without exclamation mark" do
    assert RemoveExclamationMarks.remove("hello") == "hello"
  end
end
