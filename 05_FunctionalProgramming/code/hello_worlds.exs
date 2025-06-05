defmodule Solution do
  def hello(0) do
    :ok
  end
  def hello(n) do
    IO.puts "Hello World"
    hello(n - 1)
  end
end

n = IO.gets("") |> String.trim() |> String.to_integer()
Solution.hello(n)
