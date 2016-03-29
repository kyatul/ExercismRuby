# Exercism Ruby - Queen Attack
class Queens
  attr_reader :black, :white

  def initialize(white: [0, 3], black: [7, 3])
    @white = white
    @black = black
    @board = Array.new(8) { Array.new(8, '_') }

    validate_positions
    position_queens
  end

  def attack?
    if same_row? || same_column? || share_diagonal?
      true
    else
      false
    end
  end

  def same_row?
    @black[0] == @white[0]
  end

  def same_column?
    @black[1] == @white[1]
  end

  def share_diagonal?
    (@black[0] - @white[0]).abs == (@black[1] - @white[1]).abs
  end

  def position_queens
    @board[@white[0]][@white[1]] = 'W'
    @board[@black[0]][@black[1]] = 'B'
  end

  def to_s
    result = ''
    @board.each_with_index do |column, row_index|
      board_column = ''
      column.each_with_index do |letter, column_index|
        board_column << letter
        board_column << ' ' unless column_index == column.size - 1
      end
      result << board_column
      result << "\n" unless row_index == @board.size - 1
    end
    result
  end

  def validate_positions
    raise ArgumentError if black[0] == white[0] && black[1] == white[1]
  end
end
