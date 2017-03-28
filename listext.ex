defmodule Listext do

    # basecase: an empty list
    # the order of function matters and if placed after the last function it will be never called!
    def flatten([]), do: []

    # non-empty list with more than one element
    def flatten([tail | head]) do
        flatten(head) ++ flatten(tail)
    end

    # single element list
    def flatten(head), do: [head]

    # returns 0 if list is empty
    def sum([]), do: 0

    # sums a list of numbers
    def sum([ head | tail ]) do
        head + sum(tail)
    end

    def exersize do
         [1,[[2],3]] 
            |> List.flatten 
            |> Enum.map(fn x -> x * x end) 
            |> Enum.reverse
    end

    def exercise2 do
        <<t::size(32)>> = <<192, 168, 0, 1>>
    end
end