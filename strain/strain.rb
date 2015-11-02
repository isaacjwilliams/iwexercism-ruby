module Enumerable
  def keep
    # could have been a one line select statement, but they told
    # me to "solve this one [myself] using other basic tools"
    each_with_object([]) do |x, r|
      r << x if yield(x)
    end
  end

  def discard
    kept = keep(&Proc.new)
    self - kept
  end
end
