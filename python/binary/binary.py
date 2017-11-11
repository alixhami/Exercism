def parse_binary(binary_string):
    num = 0
    for index, char in enumerate(binary_string):
        if char == "1":
            num += 2 ** (len(binary_string) - 1 - index)
        elif char != "0":
            raise ValueError("Only the characters '0' or '1' are allowed.")

    return num
