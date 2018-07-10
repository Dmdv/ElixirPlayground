defmodule combin do

  # IO.inspect RC.permute([1, 2, 3])

  def permute([]), do: [[]]
  def permute(list) do
    for x <- list, y <- permute(list -- [x]), do: [x|y]
  end
end
