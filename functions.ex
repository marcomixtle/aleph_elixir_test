handle_open = fn
   {:ok, file} -> "Read data: #{IO.read(file, :line)}"
   {_, error} -> "Error: #{:file.format_error(error)}"
end

functions_2 = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

functions_3 = fn (n) ->
  functions_2.(rem(n, 3), rem(n, 5), n)
end

prefix = fn first -> (fn second -> "#{first} #{second}" end) end

IO.puts handle_open.(File.open("functions.ex")) # call with a file that exists
IO.puts handle_open.(File.open("nonexistent")) # and then with one that doesn't

IO.puts functions_2.(2, "cat", 88)

IO.puts "#{functions_3.(10)}, #{functions_3.(11)}, #{functions_3.(12)}, #{functions_3.(13)}, #{functions_3.(14)}, #{functions_3.(15)}, #{functions_3.(16)}"

IO.puts prefix.("Marco").("Huerta")