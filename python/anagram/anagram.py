from collections import Counter


def detect_anagrams(word, candidates):
    letter_counts = Counter(word.lower())
    matches = []
    for candidate in candidates:
        if candidate.lower() == word.lower():
            continue
        if Counter(candidate.lower()) == letter_counts:
            matches.append(candidate)

    return matches
