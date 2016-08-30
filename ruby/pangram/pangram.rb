class Pangram

  def self.is_pangram?(string)
    status = true
    ('a'..'z').each do |letter|
	    if string.downcase.include? letter
		    next
	    else
		    status = false
		    break
	    end
    end
    status
  end

end

module BookKeeping
  VERSION = 2
end
