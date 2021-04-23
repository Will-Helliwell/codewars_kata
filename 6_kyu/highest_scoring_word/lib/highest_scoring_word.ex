defmodule HighestScoringWord do
  import String
  @moduledoc """
  Documentation for `HighestScoringWord`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HighestScoringWord.hello()
      :world

  """


  def high(str) do
    contains?(str, "hi")
    str
  end

end
