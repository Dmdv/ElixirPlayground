defmodule Enumerables do

  def do_stuff do

    all = Enum.all?([1, 2, 3, 4], fn(n) -> rem(n,2) == 0 end)

    IO.puts "Even list: #{all}"

    any = Enum.any?([1, 2, 3, 4], fn(n) -> rem(n,2) == 0 end)

    IO.puts "Even list: #{any}"

    Enum.each([1, 2, 3], fn(n) -> IO.puts n end)

    doubled = Enum.map([1, 2, 3], fn(n) -> n * 2 end)

    IO.inspect doubled

    IO.puts "Doubled list: #{doubled}"

    sums = Enum.reduce([1, 2, 3], fn(n, sum) -> n + sum end)

    IO.puts "Summed list: #{sums}"

    IO.inspect Enum.uniq([1, 2, 2])



  end

end
