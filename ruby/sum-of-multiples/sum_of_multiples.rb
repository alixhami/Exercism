class SumOfMultiples

  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    (2...limit).select { |n| multiple?(n) }.inject(0, :+)
  end

  def multiple?(n)
    @factors.any? { |factor| n % factor == 0 }
  end

end
