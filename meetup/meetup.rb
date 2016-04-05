# Exercism Ruby - MeetUp
class Meetup
  DAYS = {'monday' => 1, 'tuesday' => 2, 'wednesday' => 3, 'thursday' => 4,
          'friday' => 5, 'saturday' => 6, 'sunday' => 0}
  def initialize(month, year)
    @month = month
    @year = year
    @date = Date.new(year, month, 1)
  end

  def day(weekday, schedule)
    first(weekday)
    if schedule.to_s.eql?('first')
      @date
    elsif schedule.to_s.eql?('second')
      @date += 7
    elsif schedule.to_s.eql?('third')
      @date += 14
    elsif schedule.to_s.eql?('fourth')
      @date += 21
    elsif schedule.to_s.eql?('teenth')
      teenth
      @date
    elsif schedule.to_s.eql?('last')
      last(weekday)
    end
  end

  def teenth
    until @date.day > 12 && @date.day < 20
      @date += 7
    end
  end

  def last(weekday)
    @date = Date.new(@date.year, @date.month, -1)
    target_day = DAYS[weekday.to_s]
    while true
      @date.wday == target_day ? break : @date -= 1
    end
    @date
  end

  def first(weekday)
    target_day = DAYS[weekday.to_s]
    while true
      @date.wday == target_day ? break : @date += 1
    end
  end
end
