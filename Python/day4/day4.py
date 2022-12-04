from parse import parse

def part1(inputs):
    count = 0
    for input in inputs:
        if ((input[0] <= input[2]) and (input[1] >= input[3])) or ((input[2] <= input[0]) and (input[3] >= input[1])):
            count += 1

    return count

def part2(inputs):
    count = 0
    for input in inputs:
        if ((input[1] >= input[2]) and (input[0] <= input[3])):
            count += 1

    return count

if __name__ == "__main__":
    train = [parse("{:d}-{:d},{:d}-{:d}", line.strip()) for line in open("Python/day4/train.txt", "r")]
    test = [parse("{:d}-{:d},{:d}-{:d}", line.strip()) for line in open("Python/day4/test.txt", "r")]

    assert part1(train) == 2
    assert part1(test) == 536
    assert part2(train) == 4
    assert part2(test) == 845
    
    print(f"Train Part 1: {part1(train)}")
    print(f"Test Part 1: {part1(test)}")
    print(f"Train Part 2: {part2(train)}")
    print(f"Test Part 1: {part2(test)}")