class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
  	total = 0
  	count = 1
  	@number.times do
    	total += count
    	count += 1
  	end
  	total ** 2
  end

  def sum_of_squares
    total = 0
    count = 1
    @number.times do
      total += count ** 2
      count += 1
    end
    total
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 3
end
