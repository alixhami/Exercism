class BeerSong

  def verse(num)
    if num == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif num == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{num} #{units(num)} of beer on the wall, #{num} #{units(num)} of beer.\n" \
      "Take one down and pass it around, #{num-1} #{units(num-1)} of beer on the wall.\n"
    end
  end

  def verses(first, last)
    verse_num = first
    verses = ""
    until verse_num < last
      verses += verse(verse_num)
      verses += "\n" unless verse_num == last
      verse_num -= 1
    end
    verses
  end

  def lyrics
     verses(99,0)
  end

  def units(num)
    num == 1 ? "bottle" : "bottles"
  end
end

module BookKeeping
  VERSION = 2
end
