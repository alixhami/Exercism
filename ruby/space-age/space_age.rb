class SpaceAge
  SECONDS_IN_EARTH_YEAR = 31557600.0
  YEAR_IN_EARTH_YEARS = {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }
  PLANETS = YEAR_IN_EARTH_YEARS.keys

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds

    PLANETS.each do |planet|
      instance_variable_set("@on_#{planet}", age_on_planet(planet))
      self.class.send(:attr_reader, "on_#{planet}")
    end
  end

  def age_on_planet(planet)
    ((@age_in_seconds / SECONDS_IN_EARTH_YEAR) / YEAR_IN_EARTH_YEARS[planet.to_sym]).round(2)
  end
end

module BookKeeping
  VERSION = 1
end
