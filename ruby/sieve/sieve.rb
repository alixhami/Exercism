class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    primes = []
    unless @limit < 2
    	(2..@limit).each do |i|
    	  unless i == 0
    	    factors = []
    	    (2..i/2).each do |j|
    	      factors << j if i % j == 0
    	    end
    	    primes << i if factors.length == 0
    	  end
      end
    end
    primes
  end

end
