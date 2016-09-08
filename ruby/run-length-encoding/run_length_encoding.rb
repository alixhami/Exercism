class RunLengthEncoding

  def self.encode(input)
    count = 0
    encoded_input = ''
    (input.length).times do |i|
      if (i == 0 && input[i] != input[i+1]) || (input[i] != input[i+1] && input[i] != input[i-1])
        encoded_input += input[i]
      elsif i == 0 || input[i] == input[i+1] && input[i] != input[i-1]
        count = 1
      elsif input[i] == input[i+1] && input[i] == input[i-1]
        count += 1
      elsif input[i] == input[i-1] && input[i] != input[i+1]
        count += 1
        encoded_input += count.to_s + input[i]
      end
    end
    encoded_input
  end

  def self.decode(input)
    decoded_input = ''
    (input.length).times do |i|
      if input[i].to_i == 0 && (i == 0 || input[i-1].to_i == 0)
      	decoded_input += input[i]
      elsif input[i].to_i != 0 && input[i+1].to_i != 0
      	next
      elsif input[i].to_i != 0 && input[i+1].to_i == 0 && (i == 0 || input[i-1].to_i == 0)
      	decoded_input += input[i+1] * input[i].to_i
      elsif input[i].to_i != 0 && i != 0 && input[i-1].to_i != 0
      	decoded_input += input[i+1] * input[i-1..i].to_i
      end
    end
    decoded_input
  end

end

module BookKeeping
  VERSION = 2
end
