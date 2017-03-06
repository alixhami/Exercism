class Trinary

  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 if @num.match(/[^012]/)

    @num.reverse.each_char.with_index.inject(0) do |total, (digit, index)|
      total + digit.to_i * 3 ** index
    end
  end

end

module BookKeeping
  VERSION = 1
end
