class Sieve
  def initialize(roof)
    @range = 2..roof
  end

  def primes
    return @primes unless @primes.nil?
    blacklist = composites(@range)
    @primes = @range.select { |p| !blacklist.include?(p) }
  end

  private

  def composites(range)
    c = []
    (2..Math.sqrt(range.last)).each do |n|
      if n**2 < range.last
        c << (n**2..range.last).select { |b| b % n == 0 }
        c.flatten!
      end
    end
    c
  end
end
