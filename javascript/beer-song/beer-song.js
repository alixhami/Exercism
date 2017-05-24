var BeerSong = function () {};

BeerSong.prototype.verse = function (num) {
  var line1 = num + ' bottles of beer on the wall, ';
  var line2 = num + ' bottles of beer.\n';
  var line3 = 'Take one down and pass it around, ';
  var line4 = (num - 1) + ' bottles of beer on the wall.\n';

  if (num === 0) {
    line1 = line1.replace('0', 'No more');
    line2 = line2.replace('0', 'no more');
    line3 = 'Go to the store and buy some more, ';
    line4 = line4.replace('-1', '99');
  } else if (num === 1) {
    line1 = line1.replace('bottles', 'bottle');
    line2 = line2.replace('bottles', 'bottle');
    line3 = line3.replace('one', 'it');
    line4 = line4.replace('0', 'no more');
  } else if (num === 2) {
    line4 = line4.replace('bottles', 'bottle');
  }

  return line1 + line2 + line3 + line4;
};

BeerSong.prototype.sing = function (from, to) {
  to = to || 0;
  
  var song = "";
  for (var i = from; i > to; i--) {
    song += this.verse(i) + '\n';
  }
  return song += this.verse(to);
};

module.exports = BeerSong;
