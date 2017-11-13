from collections import Counter
from multiprocessing import Pool


def count_letters(word):
    return Counter(char.lower()for char in word if char.isalpha())

def calculate(text_input):
    p = Pool(len(text_input))
    counters = p.map(count_letters, text_input)
    return sum(counters, Counter())
