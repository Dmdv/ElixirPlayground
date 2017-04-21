defmodule ModulePlayground do
    import IO, only: [puts: 1]

    def say do
        puts "Hello"
    end
end