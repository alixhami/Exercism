var Bob = function () {};

Bob.prototype.hey = function (hail) {
  var lastCharacter = hail.slice(-1);
  var noLowerChars = this.isOnlyUpperCase(hail);
  var hasLetters = this.hasUpperLetters(hail);
  var onlySpaces = this.hasOnlySpaces(hail);

  if (noLowerChars && hasLetters) {
    return 'Whoa, chill out!';
  } else if (lastCharacter === '?') {
    return 'Sure.';
  } else if (hail === '' || onlySpaces) {
    return 'Fine. Be that way!';
  } else {
    return 'Whatever.';
  }
};

Bob.prototype.isOnlyUpperCase = function (str) {
  return str === str.toUpperCase();
};

Bob.prototype.hasUpperLetters = function (str) {
  return str.match(/([A-Z]+)/g);
};

Bob.prototype.hasOnlySpaces = function (str) {
  return !str.match(/([^ ]+)/g);
};

module.exports = Bob;
