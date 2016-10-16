class Array

  def accumulate(proc=nil)
    result = []
    self.each { |i| proc ? result << proc.call(i) : result << yield(i) }
    result
  end

end
