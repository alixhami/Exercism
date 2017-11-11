def is_match(word1, word2):
    return word1 != word2 and sorted(word1) == sorted(word2)

def detect_anagrams(target, words):
    return [word for word in words if is_match(target.lower(), word.lower())]
