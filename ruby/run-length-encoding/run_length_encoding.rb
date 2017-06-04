class RunLengthEncoding

  def self.encode(input)
    input.scan(/((.)\2*)/).map { |chunk, char|
      "#{chunk.length unless chunk.length == 1}#{char}"
    }.join
  end

  def self.decode(input)
    input.scan(/(\d*)(.)/).map { |num, char|
      num.empty? ? char : char * num.to_i
    }.join
  end

end

module BookKeeping
  VERSION = 2
end
