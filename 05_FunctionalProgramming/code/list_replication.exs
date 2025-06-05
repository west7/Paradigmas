defmodule Solution do
  def read_integers do
    case IO.gets("") do
      nil ->
        []
      :eof ->
        []

      line ->
        trimmed = String.trim(line)

        if trimmed == "" do
          []
        else
          [String.to_integer(trimmed) | read_integers()]
        end
    end
  end

  def replication(s, ns) do
    duplicated = Enum.map(ns, fn x -> List.duplicate(x, s) end) |> List.flatten()
    for n <- duplicated, do: Integer.to_string(n) |>  IO.puts()
  end
end

s = IO.read(:line) |> String.trim() |> String.to_integer()
ns = Solution.read_integers()
Solution.replication(s, ns)
