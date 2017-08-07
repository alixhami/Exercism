import re

def word_count(phrase):
    word_counts = {}

    phrase_without_punctuation = re.sub(r"[.:!&@$%^&]", "", phrase)
    words = re.split(r'[,_\t\n\s]\s*', phrase_without_punctuation)

    for word in words:
        lowercase_word = word.lower()

        if lowercase_word in word_counts:
            word_counts[lowercase_word] += 1
        else:
            word_counts[lowercase_word] = 1

    return word_counts
