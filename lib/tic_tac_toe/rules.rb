module TicTacToe

  class Rules

    def initialize(board)
      @board = board
    end

    def winner
      return "tie" if tie
      ["X", "O"].detect { |mark| winning_mark?(mark) }
    end

    def tie
      (1..9).each do |position|
        return false if @board.get_mark_at(position).nil?
      end
      return true
    end

    private

    def winning_mark?(mark)
      potential_winning_combinations.any? do |marks|
        winning_marks?(marks, mark)
      end
    end

    def potential_winning_combinations
      @board.rows + @board.columns + @board.diagonals
    end

    def winning_marks?(marks, mark)
      marks == [mark] * 3
    end

  end

end
