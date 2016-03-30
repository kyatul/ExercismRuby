# Exercism Ruby - Matrix
class Matrix
  attr_reader :rows, :columns

  def initialize(data)
    populate_rows(data)
    populate_columns
  end

  def populate_columns
    @columns = []
    column_index = 0

    while column_index < @rows[0].length
      row_index = 0
      column = []
      while row_index < @rows.length
        column.push(@rows[row_index][column_index])
        row_index += 1
      end
      @columns.push(column)
      column_index += 1
    end
  end

  def populate_rows(data)
    rows = data.split("\n")
    @rows = []
    rows.each do |columns|
      @rows.push(columns.split(' ').map(&:to_i))
    end
  end
end
