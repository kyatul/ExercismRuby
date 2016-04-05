# Exercism Ruby - Scale Generator
class Scale
  PITCHES_MAJOR = ['A', 'A#', 'B', 'C', 'C#', 'D',
                  'D#', 'E', 'F', 'F#', 'G', 'G#']
  PITCHES_MINOR = ['A', 'Bb', 'B', 'C', 'Db', 'D',
                  'Eb', 'E', 'F', 'Gb', 'G', 'Ab']

  def initialize(pitch, random, interval = '')
    @pitch = pitch
    @random = random
    @interval = interval

    set_pitch
  end

  def set_pitch
    if @random.to_s == 'minor'
      @pitches = PITCHES_MINOR
    else
      @pitches = PITCHES_MAJOR
    end
  end

  def name
    @pitch + ' ' + @random.to_s
  end

  def pitches
    index = 0
    pitch_position = @pitches.index(@pitch)
    puts "debug #{@pitch} array #{@pitches}"
    index = pitch_position
    flag = true
    result = []
    interval_index = 0

    while flag || index < pitch_position
      puts "index #{index.class}"
      result.push(@pitches[index])
      index += get_interval(interval_index)
      if index >= @pitches.length
        flag = false
        index = index % @pitches.length
      end
      interval_index += 1
    end
    result
  end

  def get_interval(interval_index)
    if @interval[interval_index] == 'M'
      2
    elsif @interval[interval_index] == 'A'
      3
    else
      1
    end
  end
end
