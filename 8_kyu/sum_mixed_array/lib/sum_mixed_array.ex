defmodule SumMixedArray do

  def sumMin(list) do
    first_element = Enum.at(list, 0)

    if is_number(first_element) || Kernel.length(list) == 0 do
      Enum.sum(list)
    else
      first_element |> String.to_integer
    end
  end

end
