require "tic_tac_toe/board"

module TicTacToe
  describe Board do

    before(:each) do
      @board = Board.new
    end
    
    describe "making moves" do
      it "inserts an X into position 1" do
        @board.set_mark("X", 1)
        expect(@board.get_mark_at(1)).to eq("X") 
      end

      it "inserts an O into position 5" do
        @board.set_mark("O", 5)
        expect(@board.get_mark_at(5)).to eq("O") 
      end

      it "makes a move in the last spot on the board" do
        @board.set_mark("X", 9)
        expect(@board.get_mark_at(9)).to eq("X") 
      end
    end
  
    describe "getting groups of marks" do
      
      def set_marks(position_one, position_two, position_three)
        @board.set_mark("O", position_one)
        @board.set_mark("X", position_two)
        @board.set_mark("O", position_three)
      end
      
      it "has 3 rows" do
        expect(@board.rows.count).to eq(3)
      end
      
      it "has the correct vaules in the third row" do
        set_marks(7, 8, 9)
        expect(@board.rows[2]).to eq(["O", "X", "O"])
      end

      it "has 3 columns" do
        expect(@board.columns.count).to eq(3)
      end
      
      it "has the correct vaules in the first column" do
        set_marks(1, 4, 7)
        expect(@board.columns[0]).to eq(["O", "X", "O"])
      end
      

      it "has the correct vaules in the second column" do
        set_marks(2, 5, 8)
        expect(@board.columns[1]).to eq(["O", "X", "O"])
      end

      it "has the correct vaules in the third column" do
        set_marks(3, 6, 9)
        expect(@board.columns[2]).to eq(["O", "X", "O"])
      end

      it "has 2 diagonals" do
        expect(@board.diagonals.count).to eq(2)
      end

      it "has the correct vaules in the second diagonal" do
        set_marks(3, 5, 7)
        expect(@board.diagonals[1]).to eq(["O", "X", "O"])
      end
      
    end
    
  end
end
