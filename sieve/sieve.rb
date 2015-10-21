class Sieve
  def initialize(roof)
    @range = 2..roof
  end

  def primes
    @range.select { |n| prime?(n) }
  end

  private

  def prime?(n)
    return false if n == 1
    return true if n == 2
    (2..Math.sqrt(n).ceil).none? { |num| n % num == 0 }
  end
end
