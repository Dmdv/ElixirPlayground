defmodule Sample.Case do

    def day(_), do: "Invalid day"
    def day(date) do
        case date do
            :Monday -> "M"
            :Tuesday -> "T"
            _ -> "Invalid day"
        end
    end

    def describe_date(date) do
        case date do
            {1,_,_} -> "Brand new month"
            {25,12,_} -> "Merry Christmas!"
            {25, month,_} -> "Only #{12 - month} left untill next Christmas"
            {31, 10, 1517} -> "The reformation has started"
            {31, 10, _} -> "Happy Helloween"
            {_, month,_} when month <= 12 -> "Just an average day"
            {_,_,_} -> "Invalid month"
        end
    end

    def send_tweet(path) do
        case File.read(path) do
            {:ok, data} -> IO.puts("File opened successfully")
            {:error, error} -> IO.puts("Couldn't open the file")
        end
    end
    
end