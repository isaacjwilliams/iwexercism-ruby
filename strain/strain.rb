module Enumerable
  def keep
    # could have been a one line select statement, but they told
    # me to "solve this one [myself] using other basic tools"
    array = []
    self.each do |n|
      array << n if yield(n)
    end
    array
  end

  def discard
    kept = self.keep(&Proc.new)
    self - kept
  end
end
