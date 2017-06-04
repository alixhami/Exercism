class Prime
  @@primes = [2]

  def self.nth(n)
    raise ArgumentError if n == 0

    next_number = @@primes.last + 1
    while @@primes.length < n
      @@primes << next_number if prime?(next_number)
      next_number += 1
    end
    
    @@primes[n-1]
  end

  private
  def self.prime?(number)
    (2..number/2).each do |i|
      return false if number % i == 0
    end
  end
end
