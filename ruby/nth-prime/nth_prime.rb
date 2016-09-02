class Prime

  def self.is_prime?(number)
    (2..number/2).each do |i|
      return false if number % i == 0
    end
  end

  def self.nth(n)
    raise ArgumentError if n == 0
    primes = [2]
    next_number = 3
    while primes.length < n
      primes << next_number if is_prime?(next_number)
      next_number += 1
    end
    primes[n-1]
  end

end
