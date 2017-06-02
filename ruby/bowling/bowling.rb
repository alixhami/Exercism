class Game
  class BowlingError < StandardError; end

  def initialize
    @frames = [[]]
    @current = 0
    @throws_remaining_in_frame = 2
    @frames_remaining = 10
  end

  def roll(pins)
    new_frame_total = @frames[@current].inject(0, :+) + pins
    raise BowlingError unless valid_roll?(pins, new_frame_total)

    @frames[@current] << pins
    @throws_remaining_in_frame -= 1

    if (spare?(@frames[@current]) && @current == 9) || (strike?(@frames[@current]) && [9, 10].include?(@current))
      # adds a bonus frame if the 10th frame is a strike or spare
      # or adds a second bonus frame if the 10th & 11th frames are strikes
      @frames_remaining += 1
    end

    # ends game after last throw of bonus round
    if @current == 10 && !strike?(@frames[9]) || @current == 11
      @frames_remaining = 0
    end

    next_frame if (@throws_remaining_in_frame == 0 || pins == 10) && @frames_remaining != 0
  end

  def score
    raise BowlingError unless complete?

    score = 0
    @frames.each_with_index do |frame, index|
      # won't double count the bonus frame(s)
      break if index > 9

      pin_total = frame.inject(:+)
      score += pin_total

      # bonus points
      if spare?(frame)
        score += @frames[index + 1][0]
      elsif strike?(frame)
        score += @frames[index + 1].inject(:+)

        # counts the second roll after if the next roll is a strike
        score += @frames[index + 2][0] if strike?(@frames[index + 1])
      end
    end

    score
  end

  private
  def strike?(frame)
    frame == [10]
  end

  def spare?(frame)
    frame.length == 2 && frame.inject(:+) == 10
  end

  def complete?
    @frames_remaining == 0
  end

  def next_frame
    # Only give one throw if it's the spare bonus or the second strike bonus
    if (@current == 9 && spare?(@frames[@current])) || @current == 10
      @throws_remaining_in_frame = 1
    else
      @throws_remaining_in_frame = 2
    end

    @current += 1
    @frames[@current] = []
    @frames_remaining -= 1
  end

  def valid_roll?(pins, new_frame_total)
    !complete? && (0..10).include?(pins) && new_frame_total <= 10
  end
end

module BookKeeping
  VERSION = 3
end
