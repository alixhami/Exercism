var Isogram = function (word) {
  this.word = word;
};

Isogram.prototype.isIsogram = function () {
  lettersUsed = {};
  for (var i = 0; i < this.word.length; i++) {
    if (!this.word[i].match(/[ -]/)) {
      if (lettersUsed[this.word[i].toUpperCase()]) {
        return false;
      } else {
        lettersUsed[this.word[i].toUpperCase()] = true;
      }
    }
  }
  return true;
};

module.exports = Isogram;
