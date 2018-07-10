defmodule Lists do

  def do_stuff do

    doubled = for n <- [1, 2, 3], do: n * 2

    IO.inspect doubled

    evens = for n <- 1..10, rem(n,2) == 0, do: n

    IO.inspect evens

    :done

  end

end
