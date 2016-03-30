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

  @@orbital_periods.each do |planet, orbital_period|
    define_method("on_#{planet}") do
      (@age_in_seconds / YEAR_SECONDS_ON_EARTH) / orbital_period
    end
  end
end
