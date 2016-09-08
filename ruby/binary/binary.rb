class Binary

  def initialize(binary_number)
    @binary_number = binary_number
    @binary_number.length.times do |i|
      raise ArgumentError unless @binary_number[i] == '0' || @binary_number[i] == '1'
    end
  end

  def to_decimal
    decimal_output = 0
    (@binary_number.length).times do |i|
      decimal_output += @binary_number[-(i+1)].to_i * (2**i)
    end
    decimal_output
  end

end

module BookKeeping
  VERSION = 2
end
