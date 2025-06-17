defmodule Solution do
  def read_ints() do
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
          [String.to_integer(trimmed) | read_ints()]
        end
    end
  end

  def filter(x, ns) do
    for n <- ns, n < x, do: n
  end
end

x = IO.gets("") |> String.trim() |> String.to_integer()
ns = Solution.read_ints()
r = Solution.filter(x, ns)
Enum.each(r, &IO.puts/1)
