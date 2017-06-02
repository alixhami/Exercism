class Game
  class BowlingError < StandardError; end

  def initialize
    @frames = [[]]
    @current = 0
    @throws_remaining_in_frame = 2
    @frames_allowed = 10
  end

  def roll(pins)
    new_frame_total = @frames[@current].inject(0, :+) + pins
    raise BowlingError unless valid_roll?(pins, new_frame_total)

    # adds pins to current frame and decrements the throws remaining
    @frames[@current] << pins
    @throws_remaining_in_frame -= 1

    # adds a bonus frame if the 10th frame is a strike or spare
    # or adds a second bonus frame if the 10th & 11th frames are strikes
    if (new_frame_total == 10 && @current == 9) || (@frames[9..10] == [[10], [10]] && @current == 10)
      @frames_allowed += 1
    end

    # start a new frame if the frame is complete and the game isn't over
    if !complete_game? && frame_complete?(@frames[@current], @throws_remaining_in_frame)
      next_frame
    end
  end

  def score
    # only allow a complete game to be scored
    raise BowlingError unless complete_game?

    score = 0
    @frames.each_with_index do |frame, index|
      # won't double count the bonus frame(s)
      break if index > 9

      # add the sum of the frame's pins to the score
      pin_total = frame.inject(:+)
      score += pin_total

      # add strike/spare bonus points
      if spare?(frame)
        # add the next roll after a spare
        score += @frames[index + 1][0]
      elsif strike?(frame)
        # add the next two rolls (frame) for a strike
        score += @frames[index + 1].inject(:+)

        # adds an additional throw if the next frame only has one throw
        # (two strikes in a row)
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

  def frame_complete?(frame, throws_remaining)
    frame == [10] || throws_remaining == 0
  end

  def complete_game?
    @frames.length == @frames_allowed && frame_complete?(@frames.last, @throws_remaining_in_frame)
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
  end

  def valid_roll?(pins, new_frame_total)
    !complete_game? && (0..10).include?(pins) && new_frame_total <= 10
  end
end

module BookKeeping
  VERSION = 3
end
