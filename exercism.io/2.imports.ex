defmodule ImportModule do
    import IO
    
    def print(to_print) do
        puts "Printing the string with import "
        puts to_print
    end
end