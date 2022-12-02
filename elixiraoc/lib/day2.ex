defmodule Day2 do
  def test do
    IO.puts("Train part1: #{part1("inputs/day2/train.txt")}")
    IO.puts("Test part1: #{part1("inputs/day2/test.txt")}")
    IO.puts("Train part2: #{part2("inputs/day2/train.txt")}")
    IO.puts("Test part2: #{part2("inputs/day2/test.txt")}")
  end

  def part1(path), do: input(path) |> Enum.map(&solve/1) |> Enum.sum()
  def part2(path), do: input(path) |> Enum.map(&solve2/1) |> Enum.sum()

  def input(path), do: path |> File.stream!() |> Enum.map(&parse_input/1)

  def parse_input(input), do: input |> String.trim()

  def solve("A Y"), do: 8
  def solve("A X"), do: 4
  def solve("A Z"), do: 3
  def solve("B Y"), do: 5
  def solve("B X"), do: 1
  def solve("B Z"), do: 9
  def solve("C Y"), do: 2
  def solve("C X"), do: 7
  def solve("C Z"), do: 6
  def solve2("A Y"), do: 4
  def solve2("A X"), do: 3
  def solve2("A Z"), do: 8
  def solve2("B Y"), do: 5
  def solve2("B X"), do: 1
  def solve2("B Z"), do: 9
  def solve2("C Y"), do: 6
  def solve2("C X"), do: 2
  def solve2("C Z"), do: 7
end
