class SumOfMultiples

  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    total = 0
    return total if limit < 2
    (2..limit-1).each do |i|
      is_multiple = false
      @factors.each { |factor| is_multiple = true if i % factor == 0 }
      total += i if is_multiple
    end
    total
  end

end
