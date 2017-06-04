class RunLengthEncoding

  def self.encode(input)
    letter = input[0]
    i = 0
    encoded = ""

    while i < input.length
      count = 0

      # while the current character is repeating
      while input[i] == letter
        count += 1
        i += 1
      end

      # add the number (unless it is 1), followed by the character
      encoded += "#{count.to_s unless count == 1}#{letter}"

      # set the next letter as the character that didn't
      # meet the condition to enter the while loop
      letter = input[i]
    end
    encoded
  end

  def self.decode(input)
    i = 0
    decoded = ""

    while i < input.length
      num_string = ""

      # while the character is a number
      while input[i].to_i.to_s == input[i]
        # add the number to the num_string and increment
        num_string += input[i]
        i += 1
      end

      # the letter is the first character that doesn't meet
      # the number conditional in the while loop
      letter = input[i]

      # repeat the character once if no numbers are found
      num_string = 1 if num_string.empty?

      # add the letter to the decoded string num_string times
      decoded += letter * num_string.to_i
      i += 1
    end

    decoded
  end

end

module BookKeeping
  VERSION = 2
end
