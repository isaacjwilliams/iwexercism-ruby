class Hamming
  VERSION = 1

  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length
    strand_one.chars.select.with_index { |nt, index| nt != strand_two.chars[index] }.count
  end
end
