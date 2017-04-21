defmodule FileIO do

    def write_list(path, list) do
        with {:ok, file} <- File.open(path, [:write, :utf8]) do
            
            list
                |> Enum.each( fn (line) -> IO.write (file, line) end )
            
            File.close(file)

        end
    end

    # Create a File.Stream and inspect each line

    def by_line(filename) do
      File.stream!(filename)
            |> Stream.map(&(IO.inspect(&1)))
            |> Stream.run
      end

    def readline(filename) do
        File.stream!(filename)
            |> Stream.map(&String.strip/1)
            |> Stream.with_index
            |> Stream.map(fn ({line, index}) -> IO.puts "#{index + 1} #{line}" end)
            |> Stream.run
    end

    def readline_pid(pid) do
        #IO.
    end
 
    def bin_line(path) do
    # Build the stream in binary instead for performance increase

      case File.open(path) do
        
        # File returns a tuple, {:ok,file}, if successful
        {:ok, file} ->
            IO.binstream(file, :line)
                |> Stream.map(&(IO.inspect(&1)))
                |> Stream.run

	    # And returns {:error,reason} if unsuccessful
        {:error,reason} ->
            # Use Erlang's format_error to return an error string
            :file.format_error(reason)
      end
    end
  end