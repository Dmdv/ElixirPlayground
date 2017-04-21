defmodule Streamer do

  @moduledoc """
  Documentation for Streamer.
  From 'Meet Elixir on Pluralsight
  """

  @doc """

  You can iex -S mix
  and then h Streamer.find_index to get the help
  mix test

  mix test - this runs tests

  r(Modulename) - this reloads module if it has changed

  Find streaming index in directory

  Hello world.

  ## Examples

      iex> Streamer.hello
      :world
  """

  require Record
  require FileReader

  Record.defrecord :M3U8, program_id: nil, path: nil, bandwidth: nil

  def hello do
    :world
  end

  def find_index(directory) do
    files = Path.join(directory, "*.m3u8")
    #Enum.find Path.wildcard(files), is_index?(&1)
    if file = Enum.find(Path.wildcard(files), fn(file) -> is_index?(file) end) do
      file
    end
  end

  def extract_m3u8(index_file) do
    File.open! index_file, fn (pid) ->
      #Discard #EXTM3U
      FileReader.readline(pid)
      do_extract_m3u8(pid, [])
    end
  end

  def is_index?(file) do
    File.open! file, fn(pid) ->
      IO.read(pid, 26) == "#EXTM3U\r\n#EXT-X-STREAM-INF"
    end
  end

  defp do_extract_m3u8(pid, acc) do
  end

  # pattern matching over the rop of the file
  # private function
  # wrong function
  defp is_index___?(file) do
    # when Erlang opens a file, it actually creates new process and sends message to that process
    # I/O non blocking
    File.open! file, fn
      # if starts with this
      "#EXTM3U\n#EXT-X-STREAM-INF" <> _-> true
      # anything else
      _-> false
    end
  end
end