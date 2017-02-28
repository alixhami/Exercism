class Phrase

  def initialize(phrase)
    @words = phrase.downcase.scan(/\b[^\s,]+\b/).map
  end

  def word_count
    Hash.new(0).tap { |h| @words.each { |word| h[word] += 1 } }
  end

end

module BookKeeping
  VERSION = 1
end
