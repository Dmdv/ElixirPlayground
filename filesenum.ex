defmodule Files do
    def list(dir) do

        if String.valid? do
            dir
                |> Path.join("**/*.epub") #constructs a path usign wildcards and specifies that you're interested only in EPUBs
                |> Path.Wildcard #reads the path and returns a list of matched filenames
                |> Enum.filter(fn fname -> # select only file names containing 'Java'
                    String.contains?(Path.basename(fname), "Java"))
                    end)

        end
    end
end