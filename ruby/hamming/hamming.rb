module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute(a,b)
    raise ArgumentError if a.length != b.length

    (0...(a.length)).count { |i| a[i] != b[i] }
  end

end
