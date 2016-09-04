class Bob

  def hey(remark)
    if remark.upcase == remark && remark.upcase != remark.downcase
      'Whoa, chill out!'
    elsif remark[-1] == '?'
      'Sure.'
    elsif remark.strip.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

end
