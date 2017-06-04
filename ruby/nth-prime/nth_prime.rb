class Prime
  @@primes = [2, 3]

  def self.nth(n)
    raise ArgumentError if n < 1

    next_number = @@primes.last + 2
    while @@primes.length < n
      @@primes << next_number if prime?(next_number)
      next_number += 2
    end

    @@primes[n-1]
  end

  private
  def self.prime?(number)
    @@primes.all? do |prime|
      number % prime != 0
    end
  end
end
