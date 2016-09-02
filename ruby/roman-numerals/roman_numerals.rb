class Fixnum
  @@numbers_to_numerals = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
  	100 => "C",
    90 => "XC",
  	50 => "L",
    40 => "XL",
  	10 => "X",
    9 => "IX",
  	5 => "V",
    4 => "IV",
  	1 => "I"
	}

  def to_roman
    roman_numerals = ""
  	remainder = self

	  @@numbers_to_numerals.each do |key,value|
    	if remainder >= key.to_i
    	  roman_numerals += value * (remainder/key.to_i)
    	  remainder = remainder % key.to_i
    	end
    end
    roman_numerals
  end

end

module BookKeeping
  VERSION = 2
end
