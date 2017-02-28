class Series
  def initialize(num_string)
    @num_string = num_string
  end

  def slices(length)
    raise ArgumentError if length > @num_string.length
    (0..@num_string.length-length).map { |i| @num_string[i...i+length] }
  end
end
