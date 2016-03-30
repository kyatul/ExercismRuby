# Exercism Ruby - Saddle Points
class Matrix
  attr_reader :rows, :columns

  def initialize(data)
    populate_rows(data)
    populate_columns
  end

  def saddle_points
    @saddle_points = []

    @rows.each_with_index do |row, row_index|
      maximum_index = 0
      # finds maximum value in row
      row.each_with_index do |element, index|
        maximum_index = index if element > row[maximum_index]
      end
      # checks if the maximum value is minimum in its respective column
      if minimum_in_column?(row_index, maximum_index)
        @saddle_points.push([row_index, maximum_index])
      end
    end
    @saddle_points
  end

  # checks if the given cordinate is the minimum in its respective column
  def minimum_in_column?(row_index, column_index)
    minimum_index = 0
    @columns[column_index].each_with_index do |element, index|
      minimum_index = index if element < @columns[column_index][minimum_index]
    end
    @rows[row_index][column_index] == @columns[column_index][minimum_index]
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
