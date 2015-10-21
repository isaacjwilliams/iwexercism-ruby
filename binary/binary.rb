class Binary
  VERSION = 1

  def initialize(binary)
    # Checking each character instead of the whole number because nice error
    # messages are nice!
    binary.chars.each do |char|
      raise(ArgumentError, "#{char} is not valid binary") unless char =~ /[0-1]/
    end

    @binary = binary
  end

  def to_decimal
    @binary.chars.reverse.each.with_index.inject(0) do |decimal, (digit, index)|
      decimal + (digit.to_i * (2**index))
    end
  end
end
