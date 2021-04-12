defmodule RemoveExclamationMarks do
  @moduledoc """
  Documentation for `RemoveExclamationMarks`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RemoveExclamationMarks.remove("hello")
      "hello"

  """
  def remove(string) do
    if string == "!" do
      ""
    else
      string
    end
  end
end
