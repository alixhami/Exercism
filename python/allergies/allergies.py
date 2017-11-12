import math


class Allergies(object):
    ALL_ALLERGENS = [
        'eggs',
        'peanuts',
        'shellfish',
        'strawberries',
        'tomatoes',
        'chocolate',
        'pollen',
        'cats',
    ]

    def __init__(self, score):
        self.score = score

    def is_allergic_to(self, item):
        return item in self.lst

    @property
    def lst(self):
        temp_score = self.score
        allergens = []

        while temp_score > 1:
            current_score = int(math.log(temp_score, 2))
            if current_score < len(self.ALL_ALLERGENS):
                allergens.append(self.ALL_ALLERGENS[current_score])
            temp_score -= 2 ** current_score

        if temp_score == 1:
            allergens.append('eggs')

        return allergens
