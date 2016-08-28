class Complement
  def self.of_dna(dna_strand)
    rna_strand = ''
    (dna_strand.length).times do |i|
      case dna_strand[i]
      when 'G'
        rna_strand[i] = 'C'
      when 'C'
        rna_strand[i] = 'G'
      when 'T'
        rna_strand[i] = 'A'
      when 'A'
        rna_strand[i] = 'U'
      else
        rna_strand = ''
        break
      end
    end
    rna_strand
  end
end

module BookKeeping
  VERSION = 4
end
