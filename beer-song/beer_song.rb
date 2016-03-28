#Exercism Ruby - Beer Song
class BeerSong
  VERSION = 2
  def verse(number)
    song_for_number(number)
  end

  def verses(from, to)
    result = ''
    while from >= to
      result << verse(from)
      result << "\n" if from != to
      from -= 1
    end
    result
  end

  def lyrics
    verses(99, 0)
  end

  def song_for_number(number)
    result = ''
    if number == 0
      result << "No more bottles of beer on the wall, no more bottles of beer.\n"
      result <<
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif number == 1
      result << "#{number} bottle of beer on the wall, #{number} bottle of beer.\n"
      result << "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number == 2
      result << "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"
      result << "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      result << "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"
      result << "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    end
    result
  end
end
