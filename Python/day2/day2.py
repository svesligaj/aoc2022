part1_results = {
    'A X': 4,
    'A Y': 8,
    'A Z': 3,
    'B X': 1,
    'B Y': 5,
    'B Z': 9,
    'C X': 7,
    'C Y': 2,
    'C Z': 6
}

part2_results = {
    'A X': 3,
    'A Y': 4,
    'A Z': 8,
    'B X': 1,
    'B Y': 5,
    'B Z': 9,
    'C X': 2,
    'C Y': 6,
    'C Z': 7
}

def part1(inputs):
    score = 0
    for input in inputs:
        score += part1_results[input]

    return score

def part2(inputs):
    score = 0
    for input in inputs:
        score += part2_results[input]

    return score



if __name__ == "__main__":
    train = [line.strip() for line in open("Python/day2/train.txt", "r")]
    test = [line.strip() for line in open("Python/day2/test.txt", "r")]

    assert part1(train) == 15
    assert part1(test) == 8933
    assert part2(train) == 12
    assert part2(test) == 11998
    
    print(f"Train Part 1: {part1(train)}")
    print(f"Test Part 1: {part1(test)}")
    print(f"Train Part 2: {part2(train)}")
    print(f"Test Part 1: {part2(test)}")