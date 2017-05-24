var Pangram = function(string) {
  this.string = string;
};

Pangram.prototype.isPangram = function () {
  lettersPresent = {};
  for (var i = 0; i < this.string.length; i++) {
    var character = this.string[i];
    if (character.match(/[a-zA-Z]/)) {
      lettersPresent[character.toUpperCase()] = true;
    }
  }

  return Object.keys(lettersPresent).length === 26;
};

module.exports = Pangram;
