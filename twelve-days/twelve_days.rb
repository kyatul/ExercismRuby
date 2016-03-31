# Exercism Ruby - Twelve Days
class TwelveDays
  VERSION = 1
  GIFTS = {
            'second' => 'two Turtle Doves',
            'third' => 'three French Hens',
            'fourth' => 'four Calling Birds',
            'fifth' => 'five Gold Rings',
            'sixth' => 'six Geese-a-Laying',
            'seventh' => 'seven Swans-a-Swimming',
            'eighth' => 'eight Maids-a-Milking',
            'ninth' => 'nine Ladies Dancing',
            'tenth' => 'ten Lords-a-Leaping',
            'eleventh' => 'eleven Pipers Piping',
            'twelfth' => 'twelve Drummers Drumming'
          }
  def self.song
    song = "On the first day of Christmas my true love gave to me, a Partridge in a Pear Tree.\n"
    song_ending = "and a Partridge in a Pear Tree.\n"

    GIFTS.each do |day, gift|
      song << "\nOn the #{day} day of Christmas my true love gave to me, "
      song_ending = "#{gift}, " << song_ending
      song << song_ending
    end
    song
  end
end
