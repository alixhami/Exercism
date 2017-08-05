def is_pangram(phrase):
    letters = []
    for letter in phrase:
        if letter.isalpha() and letter.lower() not in letters:
            letters.append(letter.lower())

    return len(letters) == 26
