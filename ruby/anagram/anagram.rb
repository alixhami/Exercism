class Anagram
  def initialize(word)
    @target_word = word
    @letter_map = map_letters(word)
  end

  def match(words)
    words.select do |word|
       map_letters(word) == @letter_map && word.downcase != @target_word.downcase
    end
  end

  private
  def map_letters(word)
    word.downcase.chars.uniq.map { |char| [char, word.downcase.count(char)] }.to_h
  end
end

module BookKeeping
  VERSION = 2
end
