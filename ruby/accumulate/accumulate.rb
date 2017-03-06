class Array

  def accumulate
    each_with_object([]) { |item, results| results << yield(item) }
  end

end
