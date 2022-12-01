defmodule Day1 do
  def test do
    IO.puts("Train part1: #{part1("inputs/day1/train.txt")}")
    IO.puts("Test part1: #{part1("inputs/day1/test.txt")}")
    IO.puts("Train part2: #{part2("inputs/day1/train.txt")}")
    IO.puts("Test part2: #{part2("inputs/day1/test.txt")}")
  end

  def part1(path) do
    input(path)
    |> Enum.chunk_by(&(&1 == ""))
    |> Enum.filter(&(&1 != [""]))
    |> Enum.map(&(Enum.map(&1, fn x -> String.to_integer(x) end)))
    |> Enum.map(&(Enum.sum(&1)))
    |> Enum.max()
  end

  def part2(path) do
    input(path)
    |> Enum.chunk_by(&(&1 == ""))
    |> Enum.filter(&(&1 != [""]))
    |> Enum.map(&(Enum.map(&1, fn x -> String.to_integer(x) end)))
    |> Enum.map(&(Enum.sum(&1)))
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
  end

  def input(path), do: path |> File.stream!() |> Enum.map(&parse_input/1)

  def parse_input(input), do: input |> String.trim()
end
