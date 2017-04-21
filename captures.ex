defmodule Captures do
    def test do
        f = &(&1 + &2)
        t = f(1,2)
    end
end