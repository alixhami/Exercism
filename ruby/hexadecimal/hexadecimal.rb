class Hexadecimal
  CHARACTERS = "0123456789abcdef"

  def initialize(hex_string)
    @hex_string = hex_string
  end

  def to_decimal
    hex = @hex_string.clone
    num = 0
    place = 0

    until hex.empty?
      return 0 unless CHARACTERS.include? hex[-1]
      num += (CHARACTERS.index(hex[-1])) * (16 ** place)
      place += 1
      hex = hex[0..-2]
    end

    num
  end
end
