var Anagram = function (word) {
  this.word = word.toLowerCase();
  this.sortedWord = this.word.split("").sort().join("");
};

Anagram.prototype.isAnagram = function (word) {
  var currentSortedWord = word.toLowerCase().split("").sort().join("");

  if (word.toLowerCase() === this.word) {
    return false;
  } else if (currentSortedWord === this.sortedWord) {
    return true;
  } else {
    return false;
  }
};

Anagram.prototype.matches = function (words) {
  var matchingWords = [];

  // Handles arguments as an array, comma separated strings, or a single string
  if (arguments.length > 1) {
    words = Array.from(arguments);
  } else if (arguments.length === 1 && !Array.isArray(arguments[0])) {
    words = [arguments[0]];
  }

  for (var i = 0; i < words.length; i++) {
    if (this.isAnagram(words[i])) {
      matchingWords.push(words[i]);
    }
  }
  return matchingWords;
};

module.exports = Anagram;
