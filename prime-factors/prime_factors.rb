require 'prime'

class PrimeFactors
  class << self
    def for(n)
      factors = []

      n.prime_division.each do |prime, e|
        e.times do
          factors << prime
        end
      end

      factors
    end
  end
end
