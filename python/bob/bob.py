def hey(phrase):
    if not phrase or phrase.isspace():
        return 'Fine. Be that way!'
    if phrase.isupper():
        return 'Whoa, chill out!'
    if phrase.strip()[-1] == '?':
        return 'Sure.'
    return 'Whatever.'
