defmodule AliasModule do
    alias IO, as: MyIO
    
    def print(to_print) do
        MyIO.puts "Printing the string with alias "
        MyIO.puts to_print
    end
end