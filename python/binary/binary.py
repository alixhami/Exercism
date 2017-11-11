def parse_binary(string):
    if set(string) - set('10'):
        raise ValueError("Only the characters '0' or '1' are allowed.")

    return sum(2 ** i for i, char in enumerate(string[::-1]) if char == '1')
