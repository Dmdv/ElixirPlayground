defmodule Vowels do
  # Defines options for module compilation. This is used to configure both Elixir and Erlang compilers, 
  # as any other compilation pass added by external tools.
  # http://elixir-lang.org/getting-started/module-attributes.html
  # https://hexdocs.pm/elixir/Module.html
	@compile :native
	@vowels 'aeiouAEIOU'

  def find_vowels() do
    for _ <- 1..1_000_000 do
      find_vowels("HelloWorld", "", "")
    end
    :ok
  end

  defp find_vowels(<<vowel>> <> rest, vowels, consonants) when vowel in @vowels do
    find_vowels(rest, vowels <> <<vowel>>, consonants)
  end

  defp find_vowels(<<consonant>> <> rest, vowels, consonants) do
    find_vowels(rest, vowels, consonants <> <<consonant>>)
  end

  defp find_vowels(<<>>, vowels, consonants) do
    vowels <> consonants
  end
end