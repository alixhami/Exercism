class Phrase

  def initialize(phrase)
    @words = phrase.downcase.scan(/\b[^\s,]+\b/).map
  end

  def word_count
    @words.uniq.map { |word| [word, @words.count(word)] }.to_h
  end

end

module BookKeeping
  VERSION = 1
end
