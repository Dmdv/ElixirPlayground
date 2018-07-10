defmodule Sample.Enum do
    def first([]), do: nil
    def first([head |_]), do: head

    def map([], _), do: []
    def map([head | tail], f) do
        [f.(hd) | map[tail,f]]
    end

    def factorial(num) do
        if num <= 1 do
            1
        else
            num * factorial(num - 1)
        end
    end

end
