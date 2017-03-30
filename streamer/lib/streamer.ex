defmodule Streamer do
  @moduledoc """
  Documentation for Streamer.
  From 'Meet Elixir on Pluralsight
  """

  @doc """

  Find streaming index in directory

  you can iex -S mix
  and then h Streamer.find_index to get the help

  Hello world.

  ## Examples

      iex> Streamer.hello
      :world

  """
  def hello do
    :world
  end

  def find_index(directory) do
    files = Path.join(directory, "*.m3u8")
    #Enum.find Path.wildcard(files), is_index?(&1)
    if file = Enum.find(Path.wildcard(files), fn(file) -> is_index?(file) end) do
      Path.basename file
    end
  end

  defp is_index?(file) do
    File.open! file, fn(pid) ->
      IO.read(pid, 25) == "#EXTM3U\n#EXT-X-STREAM-INF"
    end
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