defmodule SumMixedArray do

  def sumMin(list) do
    Enum.map(list, fn (element) ->
      if is_binary(element) do
        String.to_integer(element)
      else
        element
      end
    end)
    |> Enum.sum
  end

end
