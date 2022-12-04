import string

def part1(inputs):
    count = 0
    for input in inputs:
        middle = len(input) // 2
        first_rucksack, second_rucksack = input[:middle], input[middle:]
        letter = list(set(first_rucksack).intersection(second_rucksack))[0]
        count += (string.ascii_letters.index(letter) + 1)
    
    return count

def part2(inputs):
    count = 0
    for i in range(0, len(inputs), 3):
        letter = list(set(inputs[i]).intersection(inputs[i+1]).intersection(inputs[i+2]))[0]
        count += (string.ascii_letters.index(letter) + 1)

    return count

if __name__ == "__main__":
    train = [line.strip() for line in open("Python/day3/train.txt", "r")]
    test = [line.strip() for line in open("Python/day3/test.txt", "r")]

    assert part1(train) == 157
    assert part1(test) == 8233
    assert part2(train) == 70
    assert part2(test) == 2821
    
    print(f"Train Part 1: {part1(train)}")
    print(f"Test Part 1: {part1(test)}")
    print(f"Train Part 2: {part2(train)}")
    print(f"Test Part 2: {part2(test)}")