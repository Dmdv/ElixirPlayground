defmodule StreamerTest do
  @doc """
  mix test
  """
  use ExUnit.Case, async: true

  doctest Streamer

  alias Streamer.M3U8, as: M3U8
  
  @index_file "9af0270acb795f9dcafb5c51b1907628.m3u8"
  @emberjs "test/fixtures/emberjs"
  
  test "the truth" do
    assert 1 + 1 == 2
  end

  test "index file should exist" do
    Path.join(@emberjs, @index_file) |> 
    File.exists? |>
    assert
  end

  test "9af0270..m3u8 should be the index file" do
    Path.join(@emberjs, @index_file) |>
    Streamer.is_index? |>
    assert
  end

  test "finds index file in a directory" do
    assert Streamer.find_index(@emberjs) == @index_file
  end

  test "return nil for not available index file" do
    assert Streamer.find_index("test/fixtures/not available") == nil
  end

  test "extracts m3u8 from index file" do
    #m3u8s = Streamer.extract_m3u8(@index_file)
    #assert Enum.first(m3u8s) ==
      #M3U8[program_id: 1, bandwidth: 110000, path: "test/fixtures/emberjs/8bda35243c7c0a7fc69ebe1383c6464c.m3u8"]
  end

  test "read file by line" do
    file = Path.join(@emberjs, @index_file)
    test = FileReader.by_line(file)
    IO.puts test
    test = FileReader.by_line(file)
    IO.puts test
    test = FileReader.by_line(file)
    IO.puts test
  end
end
