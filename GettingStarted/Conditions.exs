defmodule Conditions do

    def day(date) do
        cond do
            date == :Monday -> "M"
            date == :Tuesday -> "T"
            true -> "Invalid day"
        end
    end

    def day2(:Monday), do: "M"
    def day2(:Tuesday), do: "T"
    def day2(_), do: "Invalid day"
end
