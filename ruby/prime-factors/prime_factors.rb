class PrimeFactors

  def self.for(num)
    result = []
    divisor = 2

    until num == 1
      if num % divisor == 0
        result << divisor
        num /= divisor
      else
        divisor += 1
      end
    end

    result
  end

end
