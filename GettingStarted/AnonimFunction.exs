defmodule Sample.Functions do

  def do_stuff do

    get_sum = fn (x,y) -> x + y end
    IO.puts "5 + 6 #{get_sum.(5, 6)}"

    get_less = &(&1 - &2)
    IO.puts "7 - 6 = #{get_less.(7,6)}"

    # This is pattern matching
    add_sum = fn
      {x, y} -> IO.puts "#{x} + #{y} = #{x + y}"
      {x, y, z} -> IO.puts "#{x} + #{y} + #{z}= #{x + y + z}"
    end

    add_sum.({1, 2})
    add_sum.({1, 2, 3})

    IO.puts do_it()

    fizzbuzz = fn
      (0, 0, c) -> IO.puts c
      (a, b, c) -> IO.puts :ok
    end

    fizzbuzz.(1, 2, 3)
    fizzbuzz.(0, 0, 3)

  end

  def do_it(x \\ 1, y \\ 2) do
    x + y
  end

end
