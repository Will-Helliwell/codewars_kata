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
    # chars_list = String.split(string, "")
    # chars_list_length = Kernel.length(chars_list)
    # chars_list = List.delete_at(chars_list, chars_list_length - 1)
    # chars_list = List.delete_at(chars_list, 0)
    # chars_list = Enum.reject(chars_list, fn (x) -> x == "!" end)
    # chars_list = Enum.join(chars_list, "")

    chars_list = String.split(string, "")
    chars_list_length = Kernel.length(chars_list)
    List.delete_at(chars_list, chars_list_length - 1)
    |> List.delete_at(0)
    |> Enum.reject(fn (x) -> x == "!" end)
    |> Enum.join("")
  end
end
