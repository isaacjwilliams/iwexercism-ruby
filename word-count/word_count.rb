class Phrase
  VERSION = 1

  def initialize(phrase); @phrase = phrase; end

  def word_count
    @phrase.downcase!
    word_count = Hash.new(0)
    @phrase.scan(/\b[\w']+\b/) { |match|
      word_count[match] += 1
    }
    word_count
  end
end
