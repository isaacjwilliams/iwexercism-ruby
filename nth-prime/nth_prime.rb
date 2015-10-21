class Prime
  # Solution stolen from @acamino
  def self.nth(n)
    raise ArgumentError if n < 1

    prime = 0
    nth_prime = 1

    while prime < n
      nth_prime += 1
      prime += 1 if prime?(nth_prime)
    end

    nth_prime
  end

  def self.prime?(num)
    return false if num == 1
    return true if num == 2

    (2..Math.sqrt(num).ceil).none? { |n| num % n == 0 }
  end

  # My original solution. Computes all primes up to n instead of just computing
  # the nth prime.
  def self.compute_primes_upto(n)
    raise ArgumentError if n < 1

    @primes = []

    for i in 2..Float::INFINITY
      j = @primes.select { |prime| i % prime == 0 }
      @primes << i if j.empty?
      break if @primes.size >= n
    end

    @primes
  end
end
