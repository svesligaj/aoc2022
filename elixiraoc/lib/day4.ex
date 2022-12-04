defmodule Day4 do
  def test do
    IO.puts("Train part1: #{part1("inputs/day4/train.txt")}")
    IO.puts("Test part1: #{part1("inputs/day4/test.txt")}")
    IO.puts("Train part2: #{part2("inputs/day4/train.txt")}")
    IO.puts("Test part2: #{part2("inputs/day4/test.txt")}")
  end

  def part1(path) do
    input(path)
    |> Enum.map(&String.split(&1, [",", "-"]))
    |> Enum.reduce(0, fn pairs, acc ->
      [first, second, third, fourth] = Enum.map(pairs, &String.to_integer/1)
      if ((first <= third) and (second >= fourth)) or (third <= first and fourth >= second) do
        acc + 1
      else
        acc
      end
    end)
  end

  def part2(path) do
    input(path)
    |> Enum.map(&String.split(&1, [",", "-"]))
    |> Enum.reduce(0, fn pairs, acc ->
      [first, second, third, fourth] = Enum.map(pairs, &String.to_integer/1)
      if ((second >= third) and (first <= fourth)) do
        acc + 1
      else
        acc
      end
    end)
  end

  def input(path), do: path |> File.stream!() |> Enum.map(&parse_input/1)

  def parse_input(input), do: input |> String.trim()
end
