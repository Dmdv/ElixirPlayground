defmodule IPHeader do

    def parse (packet) where is_binary(packet) do

     << version :: binary-size(4),
        artist :: binary-size(30),
        album :: binary-size(30),
        year :: binary-size(4),
        _rest :: binary >> = id3_tag
        
    end
end