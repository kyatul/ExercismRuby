# Exercism Ruby - Nucleotide Count
class Nucleotide
  def initialize(dnas)
    @dnas = dnas
  end

  def self.from_dna(dnas)
    validate_dna(dnas)
    Nucleotide.new(dnas)
  end

  def count(target_dna)
    dna_count = 0
    @dnas.split('').each do |dna|
      (dna_count += 1) if dna.eql?(target_dna)
    end
    dna_count
  end

  def histogram
    dna_histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }

    @dnas.split('').each do |dna|
      dna_histogram[dna] += 1
    end
    dna_histogram
  end

  def self.validate_dna(dnas)
    dnas.split('').each do |dna|
      raise ArgumentError unless (dna.eql?('A') || dna.eql?('C') ||
                                  dna.eql?('G') || dna.eql?('T'))
    end
  end
end
