class BeerSong
  def verse(number)
    intro(number) + ending(number)
  end

  def verses(start, fin)
    vv = ''
    (fin..start).each do |n|
      vv.insert(0, "\n")
      vv.insert(0, verse(n))
    end
    vv
  end

  def sing
    verses(99, 0)
  end

  private

  def intro(number)
    bottles = bottles(number)

    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n"
    else
      "#{number} #{bottles} of beer on the wall, #{number} #{bottles} of beer.\n"
    end
  end

  def ending(number)
    end_num = number - 1

    case number
    when 0
      return "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      return pass('it') + ", no more bottles of beer on the wall.\n"
    else
      return pass('one') + ", #{end_num} #{bottles(end_num)} of beer on the wall.\n"
    end
  end

  def bottles(number)
    number > 1 ? 'bottles' : 'bottle'
  end

  def pass(x)
    "Take #{x} down and pass it around"
  end
end
