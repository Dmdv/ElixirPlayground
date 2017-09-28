defmodule Sample.Enum do
    def first([]), do: nil
    def first([head |_]), do: head

    def map([], _), do: []
    def map([head | tail], f) do
        [f.(hd) | map[tail,f]]
    end
end