class Squares
  def initialize(first_n); @range = 1..first_n; end
  def square_of_sums; @range.inject(0) { |sum, n| sum + n }**2; end
  def sum_of_squares; @range.inject(0) { |sum, n| sum + n**2 }; end
  def difference; square_of_sums - sum_of_squares; end
end
