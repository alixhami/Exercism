class Phrase

  def initialize(phrase)
    @phrase = phrase.downcase.gsub(/[^\w']/, " ")
  end

  def word_count
    count = {}
    @phrase.split(' ').each do |i|
      i = i[1..-2] if i[0]=="'" && i[-1]=="'"
      if count.include? i
        count[i] += 1
      else
        count[i] = 1
      end
    end
    count
  end

end

module BookKeeping
  VERSION = 1
end
