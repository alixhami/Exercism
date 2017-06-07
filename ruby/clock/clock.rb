class Clock
  def self.at(hour, minute)
    new(hour, minute)
  end

  def +(minutes)
    @minute += minutes
    self
  end

  def ==(another_clock)
    to_s == another_clock.to_s
  end

  def to_s
    face_hour = (@hour + @minute / 60) % 24
    face_minute = @minute % 60

    format('%02d:%02d', face_hour, face_minute)
  end

  private
  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

end

module BookKeeping
  VERSION = 2
end
