class Sieve
  def initialize(roof)
    @range = 2..roof
  end

  def primes
    @primes = @range.to_a
    (2..Math.sqrt(@range.last)).each do |n|
      if n**2 < @range.last
        @primes = @primes - (n**2..@range.last).select { |b| b % n == 0 }
      end
    end
    @primes
  end
end
