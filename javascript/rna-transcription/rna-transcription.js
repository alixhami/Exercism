var dnaTranscriber = function () {
  this.dnaToRna = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  };
};

dnaTranscriber.prototype.toRna = function (strand) {
  var rnaStrand = "";

  for (var i = 0; i < strand.length; i++) {
    var rnaComplement = this.dnaToRna[strand[i]];
    if (rnaComplement) {
      rnaStrand += rnaComplement;
    } else {
      throw "Invalid input";
    }
  }

  return rnaStrand;
};

module.exports = dnaTranscriber;
