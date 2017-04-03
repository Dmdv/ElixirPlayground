defmodule StreamerTest do
  @doc """
  mix test
  """
  use ExUnit.Case, async: true

  doctest Streamer

  alias Streamer.M3U8, as: M3U8
  @index_file "9af0270acb795f9dcafb5c51b1907628.m3u8"

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "finds index file in a directory" do
    assert Streamer.find_index("test/fixtures/emberjs") == @index_file
  end

  test "return nil for not available index file" do
    assert Streamer.find_index("test/fixtures/not available") == nil
  end

  test "extracts m3u8 from index file" do
    m3u8s = Streamer.extract_m3u8(@index_file)
    assert Enum.first(m3u8s) ==
      M3
  end

end
