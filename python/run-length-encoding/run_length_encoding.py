def decode(string):
    decoded = []
    num_string = ''
    for char in string:
        if not char.isnumeric():
            if num_string:
                decoded.append(char * int(num_string))
            else:
                decoded.append(char)
            num_string = ''
        else:
            num_string += char
    return ''.join(decoded)


def encode(string):
    encoded = []
    count = 0
    for index, char in enumerate(string):
        count += 1
        if index == len(string) - 1 or string[index + 1] != char:
            if count > 1:
                encoded.append(str(count))
            encoded.append(char)
            count = 0

    return ''.join(encoded)
