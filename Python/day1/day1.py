def part1(input):
    temp = []
    inputs = []
    for inp in input:
        if inp == '':
            inputs.append(sum(temp))
            temp = []
            pass
        else:
            temp.append(int(inp))
    inputs.append(temp[0])
    return max(inputs)

def part2(input):
    temp = []
    inputs = []
    for inp in input:
        if inp == '':
            inputs.append(sum(temp))
            temp = []
        else:
            temp.append(int(inp))
    inputs.append(temp[0])
    inputs.sort()
    inputs.reverse()
    return sum(inputs[0:3])


        



if __name__ == "__main__":
    train = [line.replace('\n', '') for line in open("day1/inputs/train.txt", "r")]
    test = [line.replace('\n', '') for line in open("day1/inputs/test.txt", "r")]

    assert part1(train) == 24000
    assert part1(test) == 66616
    assert part2(train) == 45000
    assert part2(test) == 199172
    
    print(f"Train Part 1: {part1(train)}")
    print(f"Test Part 1: {part1(test)}")
    print(f"Train Part 2: {part2(train)}")
    print(f"Test Part 1: {part2(test)}")