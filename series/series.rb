class Series
  def initialize(digit)
    @digit = []
    digit.chars.each { |d| @digit << d.to_i }
  end

  def slices(slice_length)
    validate_slice_length(slice_length)
    @digit.each_cons(slice_length).to_a
  end

  private

  def validate_slice_length(slice_length)
    fail(ArgumentError, "Don't be stupid - #{slice_length} is less than 1") \
          if slice_length < 1
    fail(ArgumentError, "#{slice_length} is a float") \
          if float?(slice_length)
    fail(ArgumentError, "#{slice_length} if longer than #{@digit.size}") \
          if slice_length > @digit.size
  end

  def float?(number)
    number % 1 != 0
  end
end
