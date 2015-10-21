class Bob
  def hey(remark)
    return "Fine. Be that way!" if silent?(remark)
    return "Sure."              if question?(remark)
    return "Whoa, chill out!"   if yelling?(remark)
    return "Whatever."
  end

  private

  def silent?(string)
    string.strip.empty? ? true : false
  end

  def question?(string)
    string[-1] == '?' && contains_lowercase?(string) ? true : false
  end

  def yelling?(string)
    string.upcase == string && string =~ /[A-Z]+/ ? true : false
  end

  def contains_lowercase?(string)
    string =~ /[^A-Z\s?]+/ ? true : false
  end
end
