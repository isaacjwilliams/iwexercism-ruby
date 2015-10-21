class SumOfMultiples
  def initialize(*factors); @factors = factors; end

  def self.to(number); new(3, 5).to(number); end

  def to(number)
    composites = (1..number - 1).select do |n|
      @factors.any? { |m| n % m == 0 }
    end
    composites.inject(0) { |sum, n| sum + n }
  end
end
