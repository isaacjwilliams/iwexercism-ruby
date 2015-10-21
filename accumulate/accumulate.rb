class Array
  def accumulate
    result = []
    self.each.with_index do |n, i|
      result[i] = yield(n)
    end
    result
  end
end
