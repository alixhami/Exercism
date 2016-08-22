module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute(a,b)
    distance = 0

    if a.length != b.length
      raise(ArgumentError)
    else
      a.length.times do |i|
  	     distance += 1 if a[i] != b[i]
      end
    end

    return distance

  end

end
