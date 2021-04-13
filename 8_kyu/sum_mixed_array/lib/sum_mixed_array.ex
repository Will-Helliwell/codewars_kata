defmodule SumMixedArray do

  def sumMin(list) do
    convert_strings_to_integers(list)
    |> Enum.sum
  end

  defp convert_strings_to_integers(list) do
    Enum.map(list, fn (element) ->
      if is_binary(element) do
        String.to_integer(element)
      else
        element
      end
    end)
  end

end
