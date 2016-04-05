# Exercism Ruby - Minesweeper
class Board
  def initialize(rows)
    @board = []

    rows.each do |row|
      @board.push(row.split(''))
    end

    validate_board
  end

  def validate_board
    row_length = @board[0].length

    @board.each do |row|
      raise ValueError if row.length != row_length
    end
  end

  def self.transform(rows)
    game = Board.new(rows)
    game.populate
    game.to_a
  end

  def to_a
    result = []
    @board.each do |rows|
      result.push(rows.join(''))
    end
    result
  end

  def populate
    rows_index = 1
    while rows_index < (@board.length - 1)
      column_index = 1
      while column_index < (@board[rows_index].length) -1
        @board[rows_index][column_index] = bomb_count(rows_index, column_index) unless @board[rows_index][column_index].eql?('*')
        column_index += 1
      end
      rows_index += 1
    end
  end

  def bomb_count(rows_index, column_index)
    count = 0
    coordinates = [[-1, -1], [-1, 0], [-1, 1],
                   [0, -1],           [0, 1],
                   [1, -1], [1, 0], [1,1] ]
    coordinates.each do |coordinate|
      if @board[rows_index + coordinate[0]][column_index + coordinate[1]]
        .eql?('*')
        count += 1
      end
    end
    count ==0 ? ' ' : count.to_s
  end
end

class ValueError < StandardError
end
