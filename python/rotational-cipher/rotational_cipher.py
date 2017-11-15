def shift(letter, key):
    if not letter.isalpha():
        return letter
    start = 'A' if letter.isupper() else 'a'
    return chr(ord(start) + (ord(letter) - ord(start) + key) % 26)

def rotate(text, key):
    return ''.join(shift(letter, key) for letter in text)
