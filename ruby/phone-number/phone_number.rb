class PhoneNumber
  attr_reader :number

  def initialize(number)
    @number = number.gsub(/[-()\.\ ]/,"")
    @number = @number[1..-1] if @number.length == 11 && @number[0] == '1'
    @number = '0000000000' if @number.length != 10 || @number.to_i.to_s != @number
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(%s) %s-%s" % [area_code, @number[3..5], @number[6..9]]
  end

end
