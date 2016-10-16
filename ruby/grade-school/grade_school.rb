class School

  def initialize
    @roster = {}
    (1..8).each {|i| @roster[i] = []}
  end

  def add(name,grade)
    @roster[grade] << name
    @roster[grade].sort!
  end

  def students(grade)
    @roster[grade]
  end

  def students_by_grade
    result = []
    @roster.each do |i|
      result << {grade: i[0], students: i[1]} unless i[1] == []
    end
    result
  end

end

module BookKeeping
  VERSION = 3
end
