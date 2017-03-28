defmodule MyList do

    # basecase: an empty list
    def flatten([]), do : []

    # non-empty list with more than one element
    def flatten([tail | head]) do
        flatten(head) ++ flatten(tail)
    end

    # single element list
    def flatten(head), do : [head]
end