class Robot
  attr_accessor :name

  @@robot_ids = ('AA000'..'ZZ999').to_a.shuffle

  def initialize
    @name = @@robot_ids.pop
  end

  def reset
    @name = @@robot_ids.pop
  end

end

module BookKeeping
  VERSION = 2
end
