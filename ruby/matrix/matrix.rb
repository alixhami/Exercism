class Matrix
  attr_reader :rows, :columns

  def initialize(matrix_string)
    @rows = string_to_rows(matrix_string)
    @columns = rows.transpose
  end

  private
  def string_to_rows(matrix_string)
    matrix_string.split("\n").map { |row_string|
      row_string.split(' ').map(&:to_i)
    }
  end
end
