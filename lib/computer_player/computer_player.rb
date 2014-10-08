module TicTacToe

  class ComputerPlayer

  	def initialize
  	  @triples = [ [1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7] ]
  	end

  	def decide_move(board)
  	  return find_winning_cell(board, "O") if find_winning_cell(board, "O") != nil
  	  return find_winning_cell(board, "X") if find_winning_cell(board, "X") != nil
  	  return random_move(board)
	  end

  	def find_winning_cell(board, mark)
  	  return find_cell(board, mark) if find_cell(board, mark) != nil
  	  return nil
  	end

    def random_move(board)
      while(true)
        trial_number = rand(9) + 1
        if board[trial_number-1] == nil
          return trial_number
        end
      end
    end

  	private

  	def find_cell(board, mark)
  	  @triples.each do |triplet|
  	    define_permutation(triplet[0], triplet[1], triplet[2]).each do |triple|
    		  return triple[2] if it_finds_a_winning_triple(board, mark, triple[0], triple[1], triple[2])
  		  end
		  end
		  return nil
	  end

  	def define_permutation(cell_one, cell_two, cell_three)
  	  return [cell_one, cell_two, cell_three].permutation.to_a
	  end

    def it_finds_a_winning_triple(board, mark, filled_spot_one, filled_spot_two, potential_move)
      if board[filled_spot_one-1] == mark && board[filled_spot_two-1] == mark && spot_is_empty?(board, potential_move-1)
        return true
      else
        return false
      end
    end

    def spot_is_empty?(board, position)
      board[position].nil?
    end

  end

end