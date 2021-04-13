defmodule SumMixedArray do

  # def hello do
  #   :world
  # end

  def sumMin(list) do
    if is_number(Enum.at(list, 0)) || Kernel.length(list) == 0 do
      Enum.sum(list)
    else
      Enum.at(list, 0) |> String.to_integer
    end
  end

end
