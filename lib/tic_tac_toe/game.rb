module TicTacToe

  class Game

    attr_reader :computer_player, :board

    def initialize
      @board = Board.new
      @rules = Rules.new(@board)
      @computer_player = ComputerPlayer.new
      @marks = ["X", "O"]
    end

    def in_progress?
      return false if winner || tie
      return true
    end

    def move(position)
      @board.set_mark(current_mark, position)
      change_current_mark
    end

    def get_mark_at(position)
      @board.get_mark_at(position)
    end

    def winner
      @rules.winner
    end

    def tie
      @rules.tie
    end

    private

    def current_mark
      @marks.first
    end

    def change_current_mark
      @marks.reverse!
    end

  end

end
