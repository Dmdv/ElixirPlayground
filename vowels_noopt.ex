defmodule Vowels do
  @vowels ~w(a e i o u)

  def find_vowels do
    for _ <- 1..1_000_000 do
      "HelloWorld"
      |> String.downcase
      |> String.codepoints
      |> Enum.partition(&Enum.member?(@vowels, &1))
      |> Tuple.to_list
      |> Enum.map(&(Enum.join/1))
    end
  end
end