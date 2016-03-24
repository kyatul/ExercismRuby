class Clock
  attr_reader :hour, :minute

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute=0)
    Clock.new(hour, minute)
  end

  def to_s
    hour = validate_double_digit(@hour)
    minute = validate_double_digit(@minute)
    "#{hour}:#{minute}"
  end

  def +(minute)
    @hour += minute / 60
    @minute += minute % 60

    if @hour >= 24
      @hour = 24 - @hour
    end

    Clock.new(@hour, @minute)
  end

  def -(minute)
    @hour -= (minute /60 )
    if @minute == 0
      @minute = 60
      @hour -= 1
    end

    if @hour < 0
      @hour = (24 + @hour)
    end

    @minute -= minute % 60

    Clock.new(@hour, @minute)
  end

  def ==(other)
    if other.is_a? Clock
      (@hour == other.hour && @minute == other.minute)
    else
      false
    end
  end

  private

  def validate_double_digit(number)
    number = number.to_s.length < 2 ? ('0' << number.to_s) : number.to_s
  end
end
