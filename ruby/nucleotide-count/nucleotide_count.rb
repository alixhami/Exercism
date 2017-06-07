class Nucleotide
  NUCLEOTIDES = "ACTG"

  def initialize(dna_string)
    @dna = dna_string
    raise ArgumentError if dna_string.match(/[^#{NUCLEOTIDES}]/)
  end

  def self.from_dna(dna_string)
    new(dna_string)
  end

  def histogram
    @histogram ||= NUCLEOTIDES.chars.map { |nucleotide|
      [nucleotide, @dna.count(nucleotide)]
    }.to_h
  end

  def count(nucleotide)
    histogram[nucleotide]
  end
end
