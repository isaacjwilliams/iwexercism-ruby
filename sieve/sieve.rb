class Sieve
  def initialize(roof)
    @range = 2..roof
  end

  def primes
    blacklist = []
    @primes = @range.to_a
    (2..Math.sqrt(@range.last)).each do |n|
      blacklist << (n**2..@range.last).step(n).to_a
    end
    @primes - blacklist.flatten
  end
end
