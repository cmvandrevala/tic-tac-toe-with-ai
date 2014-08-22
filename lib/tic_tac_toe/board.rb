module TicTacToe
  
  class Board
    
    def initialize
      @board_positions = []
    end
    
    def set_mark(mark, position)
      @board_positions[position] = mark
    end
    
    def get_mark_at(position)
      @board_positions[position]
    end
    
    def return_entire_board
      return [get_mark_at(1), get_mark_at(2), get_mark_at(3),
              get_mark_at(4), get_mark_at(5), get_mark_at(6),
              get_mark_at(7), get_mark_at(8), get_mark_at(9)]
    end
    
    def rows
      position_groups_to_marks([
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ])
    end
    
    def columns
      position_groups_to_marks([
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9]
      ])
    end
    
    def diagonals
      position_groups_to_marks([
        [1, 5, 9],
        [3, 5, 7]
      ])
    end
    
    private
    
    def position_groups_to_marks(position_groups)
      position_groups.collect do |positions|
        positions.collect do |position|
          get_mark_at(position)
        end
      end
    end
    
  end
  
end