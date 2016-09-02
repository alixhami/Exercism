class Grains

  def self.square(number)
    grains_board = [1]
    63.times do |i|
      grains_board << grains_board[-1]*2
    end
    grains_board[number-1]
  end

end
