defmodule URLWorker do

    # an example of pipe operator |>
    def start(url) do
        result = url |> HTTPoison.get |> do_request
    end

    def do_request(str) do
        IO.puts str
    end

end