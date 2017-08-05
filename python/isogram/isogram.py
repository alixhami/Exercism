def is_isogram(word):
    letters = {}
    for letter in word:
        if letter.isalpha() and letter.lower() in letters:
            return False
        else:
            letters[letter.lower()] = True

    return True
