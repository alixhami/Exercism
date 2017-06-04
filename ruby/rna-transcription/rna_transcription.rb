class Complement
  DNA_TO_RNA_MAP = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna_strand)
    rna_strand = dna_strand.chars.map { |nucleotide|
      DNA_TO_RNA_MAP[nucleotide]
    }.join

    rna_strand.length == dna_strand.length ? rna_strand : ''
  end
end

module BookKeeping
  VERSION = 4
end
