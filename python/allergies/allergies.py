class Allergies(object):
    ALLERGENS = [
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
        return 1 << self.ALLERGENS.index(item) & self.score != 0

    @property
    def lst(self):
        return [allergen for allergen in self.ALLERGENS
                if self.is_allergic_to(allergen)]
