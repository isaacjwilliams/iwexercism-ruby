class Trinary
  VERSION = 1

  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    reversed_trinary = @trinary.chars.reverse
    reversed_trinary.each.with_index.inject(0) do |decimal, (digit, index)|
      decimal + (digit.to_i * (3**index))
    end
  end
end
