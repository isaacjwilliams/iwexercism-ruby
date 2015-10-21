class FoodChain
  VERSION = 2

  @exclamations = {
    "spider" => "It wriggled and jiggled and tickled inside her.\n",
    "bird"   => "How absurd to swallow a bird!\n",
    "cat"    => "Imagine that, to swallow a cat!\n",
    "dog"    => "What a hog, to swallow a dog!\n",
    "goat"   => "Just opened her throat and swallowed a goat!\n",
    "cow"    => "I don't know how she swallowed a cow!\n",
    "horse"  => "She's dead, of course!\n"
  }

  def self.song
    total = ["fly", "spider", "bird", "cat", "dog", "goat", "cow", "horse"]
    song  = ""
    (0...8).each do |i|
      song << "\n\n" unless i == 0
      song << self.verses_for(total[0..i])
    end
    song
  end

  private

  def self.verses_for(animals)
    poem = "I know an old lady who swallowed a #{animals.last}.\n"
    poem << @exclamations[animals.last] if @exclamations[animals.last]

    return poem if animals.last == "horse"

    animals.reverse.each.with_index do |animal, i|
      if animals.reverse[i + 1] == "spider"
        poem << "She swallowed the #{animal} to catch the #{animals.reverse[i + 1]} that wriggled and jiggled and tickled inside her.\n"
      else
        poem << "She swallowed the #{animal} to catch the #{animals.reverse[i + 1]}.\n" unless animals.reverse[i + 1] == nil
      end
    end
    poem << "I don't know why she swallowed the #{animals.first}. Perhaps she'll die."

    poem
  end
end
