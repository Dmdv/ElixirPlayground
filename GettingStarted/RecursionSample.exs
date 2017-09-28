defmodule Sample.Lyrics do

    defp get_sentence(2), do: IO.puts("2")
    defp get_sentence(1), do: IO.puts("1")
    defp get_sentence(number), do: IO.puts(number)

    def lyrics(), do: lyrics(100..1)

    def lyrics(first..last) when first <= last, 
        do: get_sentence(first)
    
    def lyrics(first..last),
        do: get_sentence(first) <> lyrics(first-1..last)
end