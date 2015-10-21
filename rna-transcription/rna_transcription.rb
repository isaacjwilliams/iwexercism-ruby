class Complement
  VERSION = 2
  @@dna_rna = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(dna); complementor(dna, @@dna_rna); end
  def self.of_rna(rna); complementor(rna, @@dna_rna.invert); end

  private
  def self.complementor(strand, map)
    strand.chars.map do |nt|
      raise ArgumentError unless map.include?(nt)
      map[nt]
    end.join
  end
end
