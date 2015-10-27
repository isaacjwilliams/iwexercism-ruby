class Trinary
  VERSION = 1

  def initialize(trinary)
    @trinary = trinary if trinary =~ /[0-2]+/
  end

  def to_decimal
    return 0 unless @trinary

    reversed_trinary = @trinary.chars.reverse
    reversed_trinary.each.with_index.inject(0) do |decimal, (digit, index)|
      decimal + (digit.to_i * (3**index))
    end
  end
end
