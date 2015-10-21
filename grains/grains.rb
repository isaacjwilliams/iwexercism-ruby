# f(n) = {  f(n-1) * 2 if n > 1 }
#        {  1 if n == 1         }

class Grains
  def self.square(n)
    raise ArgumentError if n < 1
    return 1 if n == 1

    self.square(n-1) * 2
  end

  def self.total
    (1..64).inject(0) { |total, n| total += square(n) }
  end
end
