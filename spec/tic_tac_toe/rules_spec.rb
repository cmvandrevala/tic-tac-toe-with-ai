require "tic_tac_toe/rules"
require "tic_tac_toe/board"

module TicTacToe
  describe Rules do
    
    describe "winner" do
      before(:each) do
        @board = Board.new
        @rules = Rules.new(@board)
      end
      
      it "is nil for an empty board" do
        expect(@rules.winner).to eq(nil)
      end
      
      it "is X when X has 3 in the top row" do
        @board.set_mark("X", 1)
        @board.set_mark("X", 2)
        @board.set_mark("X", 3)

        expect(@rules.winner).to eq("X")
      end

      it "is O when O has 3 in the top row" do
        @board.set_mark("O", 1)
        @board.set_mark("O", 2)
        @board.set_mark("O", 3)

        expect(@rules.winner).to eq("O")
      end

      it "is X when X has 3 in the middle row" do
        @board.set_mark("X", 4)
        @board.set_mark("X", 5)
        @board.set_mark("X", 6)

        expect(@rules.winner).to eq("X")
      end

      it "is X when X wins in a column" do
        @board.set_mark("X", 3)
        @board.set_mark("X", 6)
        @board.set_mark("X", 9)

        expect(@rules.winner).to eq("X")
      end

      it "is X when X wins in a diagonal" do
        @board.set_mark("X", 1)
        @board.set_mark("X", 5)
        @board.set_mark("X", 9)

        expect(@rules.winner).to eq("X")
      end


    end
    
  end
end
