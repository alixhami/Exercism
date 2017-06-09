class Translation
  STOP_CODONS = %w(UAA, UAG, UGA)
  CODON_TO_PROTEIN = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG' => 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG' => 'Serine',
    'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan',
    'UAA' => 'STOP',
    'UAG' => 'STOP',
    'UGA' => 'STOP'
  }

  def self.of_codon(codon)
    CODON_TO_PROTEIN[codon] ? CODON_TO_PROTEIN[codon] : (raise InvalidCodonError)
  end

  def self.of_rna(strand)
    codons = strand.scan(/.{3}/)
    codons.map { |codon|
      of_codon(codon)
    }.take_while { |protein|
      protein != 'STOP'
    }
  end
end

class InvalidCodonError < StandardError; end
