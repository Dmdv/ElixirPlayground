defmodule PatternMatching do

  def run do

    # Passing argument as a tuple

    # Multiple parameters in a tuple
    add_sum = fn
      {x, y} -> IO.puts "#{x} + #{y} = #{x + y}"
      {x, y, z} -> IO.puts "#{x} + #{y} + #{z} = #{x + y + z}"
    end

    sum = fn
      ([]) -> nil
      (a) -> Enum.reduce(a, fn (n, acc) -> acc + n end)
    end

    list_concat = fn
      (nil, nil) -> nil
      (a, nil) -> a
      (nil, a) -> a
      (a, b) -> a ++ b
    end

    pair_tuple_to_list = fn
      {a} -> [a]
      {a, b} -> [a,b]
      nil -> nil
    end

    add_sum.({1, 2})
    add_sum.({1, 2, 3})

    IO.inspect list_concat.([:a, :b], [:c, :d])
    IO.inspect list_concat.(nil, nil)
    IO.inspect list_concat.([:a, :b], nil)
    IO.inspect list_concat.(nil, [:a, :b])

    IO.inspect sum.([])
    IO.inspect sum.([1, 2, 3, 4, 5, 6])

    IO.puts "Pair tuples to list"
    IO.inspect pair_tuple_to_list.({12345, 6789})
    IO.inspect pair_tuple_to_list.({12345})
    IO.inspect pair_tuple_to_list.(nil)

    #IO.inspect sum.((1, 2, 3)))

  end

end
