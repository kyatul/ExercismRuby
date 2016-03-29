# Exercism Ruby - Protein Translation
class Translation
  @@codons_acids = {
                    'AUG' => 'Methionine', 'UUU' => 'Phenylalanine',
                    'UUC' => 'Phenylalanine', 'UUG' => 'Leucine',
                    'UUA' => 'Leucine', 'UCU' => 'Serine',
                    'UCC' => 'Serine', 'UCA' => 'Serine',
                    'UCG' => 'Serine', 'UAU' => 'Tyrosine',
                    'UAC' => 'Tyrosine', 'UGU' => 'Cysteine',
                    'UGC' => 'Cysteine', 'UGG' => 'Tryptophan',
                    'UAA' => 'STOP', 'UAG' => 'STOP',
                    'UGA' => 'STOP',
                  }
  def self.of_codon(codon)
    @@codons_acids[codon]
  end

  def self.of_rna(strand)
    validate_strand(strand)

    result = []
    index = 0
    while index < strand.length
      break if @@codons_acids[strand[index, 3]].eql?('STOP')
      result.push(@@codons_acids[strand[index, 3]])
      index += 3
    end
    result
  end

  def self.validate_strand(strand)
    raise InvalidCodonError unless strand.eql?(strand.match(/[ACGU]*/).to_s)
  end
end

class InvalidCodonError < StandardError
end
