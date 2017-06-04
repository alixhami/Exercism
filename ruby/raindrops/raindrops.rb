class Raindrops
  SOUND_FACTORS = {
    'Pling' => 3,
    'Plang' => 5,
    'Plong' => 7
  }

  def self.convert(number)
    phrase = SOUND_FACTORS.select { |sound, factor|
      number % factor == 0
    }.keys.join

    phrase.empty? ? number.to_s : phrase
  end

end

module BookKeeping
  VERSION = 2
end
