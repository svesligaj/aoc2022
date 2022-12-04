defmodule Day3 do
  def test do
    IO.puts("Train part1: #{part1("inputs/day3/train.txt")}")
    IO.puts("Test part1: #{part1("inputs/day3/test.txt")}")
    IO.puts("Train part2: #{part2("inputs/day3/train.txt")}")
    IO.puts("Test part2: #{part2("inputs/day3/test.txt")}")
  end

  def part1(path) do
    input(path)
    |> Enum.map(fn bag ->
      item_count = Enum.count(bag)
      {first_rucksack, second_rucksack} = Enum.split(bag, div(item_count, 2))

      MapSet.intersection(MapSet.new(first_rucksack), MapSet.new(second_rucksack))
      |> Enum.into([])
      |> List.first()
    end)
    |> extract_chars_sum()
  end

  def part2(path) do
    input(path)
    |> Enum.chunk_every(3)
    |> Enum.map(&get_letter_occurance/1)
    |> extract_chars_sum()
  end

  def input(path), do: path |> File.stream!() |> Enum.map(&parse_input/1)

  def parse_input(input), do: input |> String.trim() |> String.graphemes()

  defp extract_chars_sum(chars) do
    chars
    |> Enum.map(fn char ->
      char
      |> String.to_charlist()
      |> List.first()
      |> get_letter_value()
    end)
    |> Enum.sum()
  end

  defp get_letter_value(char) do
    if char in ?a..?z do
      char - 96
    else
      char - 38
    end
  end

  defp get_letter_occurance(groups) do
    groups
    |> Enum.map(&MapSet.new/1)
    |> Enum.reduce(&MapSet.intersection/2)
    |> Enum.into([])
    |> List.first()
  end
end
