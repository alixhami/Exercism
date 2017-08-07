def to_rna(dna_strand):
    dna_to_rna = {
        "G": "C",
        "C": "G",
        "T": "A",
        "A": "U"
    }

    rna = ""
    for nucleotide in dna_strand:
        if nucleotide in dna_to_rna:
            rna += dna_to_rna[nucleotide]
        else:
            return ""

    return rna
