class Array
  def keep
    each_with_object([]) { |item, results| results << item if yield(item) }
  end

  def discard
    keep { |item| !yield(item) }
  end
end
