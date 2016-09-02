class Fixnum

  def to_roman
    roman_numerals = ""
	remainder = self
	if remainder >= 1000
	  roman_numerals += "M" * (remainder/1000)
	  remainder = remainder % 1000
	end
	if remainder >= 500
	  if remainder >= 900
	  	roman_numerals += "CM"
	  	remainder = remainder % 900
	  else
	  	roman_numerals += "D"
	  	remainder = remainder % 500
	  end
	end
	if remainder >= 100
	  if remainder >= 400
	  	roman_numerals += "CD"
	  	remainder = remainder % 400
	  else
	  	roman_numerals += "C" * (remainder/100)
	  	remainder = remainder % 100
	  end
	end
	if remainder >= 50
	  if remainder >= 90
	  	roman_numerals += "XC"
	  	remainder = remainder % 90
	  else
	  	roman_numerals += "L"
	  	remainder = remainder % 50
	  end
	end
	if remainder >= 10
	  if remainder >= 40
	  	roman_numerals += "XL"
	  	remainder = remainder % 40
	  else
	  	roman_numerals += "X" * (remainder/10)
	  	remainder = remainder % 10
	  end
	end
	if remainder >= 5
	  if remainder >= 9
	  	roman_numerals += "IX"
	  	remainder = remainder % 9
	  else
	  	roman_numerals += "V"
	  	remainder = remainder % 5
	  end
	end
	if remainder >= 1
	  if remainder == 4
	  	roman_numerals += "IV"
	  	remainder = remainder % 4
	  else
	  	roman_numerals += "I" * remainder
	  end
	end
  roman_numerals
  end
  
end

module BookKeeping
  VERSION = 2
end
