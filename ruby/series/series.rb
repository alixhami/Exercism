class Series
  def initialize(num_string)
    @num_string = num_string
  end

  def slices(length)
    raise ArgumentError if length > @num_string.length
    Array.new(0).tap { |a| (0..(@num_string.length-length)).each { |index| a << @num_string[index...index+length]}}
  end
end
