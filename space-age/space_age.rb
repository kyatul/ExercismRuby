# Exercism Ruby Space Age
class SpaceAge
  YEAR_SECONDS_ON_EARTH = 31_557_600.00
  @@orbital_periods = {
                       'earth' => 1.00,
                       'mercury' => 0.2408467,
                       'venus' => 0.61519726,
                       'mars' => 1.8808158,
                       'jupiter' => 11.862615,
                       'saturn' => 29.447498,
                       'uranus' => 84.016846,
                       'neptune' => 164.79132
                      }

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  def seconds
    @age_in_seconds
  end

  def on_earth
    (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / @@orbital_periods['earth']
  end

  def on_mercury
    (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / @@orbital_periods['mercury']
  end

  def on_venus
    (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / @@orbital_periods['venus']
  end

  def on_mars
    (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / @@orbital_periods['mars']
  end

  def on_jupiter
    (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / @@orbital_periods['jupiter']
  end

  def on_saturn
    (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / @@orbital_periods['saturn']
  end

  def on_uranus
    (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / @@orbital_periods['uranus']
  end

  def on_neptune
    (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / @@orbital_periods['neptune']
  end
end
