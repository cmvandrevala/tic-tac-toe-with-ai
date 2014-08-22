require "computer_player/computer_player.rb"

module TicTacToe
  
  describe ComputerPlayer do
    
    before(:each) do
    	@player = ComputerPlayer.new
    end
    
    describe "finding two of a kind horizonally" do

    	it "should find a horizontal winning spot in the top right" do
    		board = ["O", "O", nil, "X", nil, nil, "X", "X", nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(3)
    	end

    	it "should find a horizontal winning spot in the middle right" do
    		board = ["X", nil, nil, "O", "O", nil, "X", "X", nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(6)
    	end

    	it "should find a horizontal winning spot in the bottom right" do
    		board = ["X", nil, nil, "X", "X", nil, "O", "O", nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(9)
    	end

    	it "should find a horizontal winning spot in the top middle" do
    		board = ["O", nil, "O", "X", "X", nil, "O", nil, nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(2)
    	end

    	it "should find a horizontal winning spot in the center middle" do
    		board = ["O", "O", nil, "X", nil, "X", "X", nil, nil]
    		expect(@player.find_winning_cell(board, "X")).to eq(5)
    	end

    	it "should find a horizontal winning spot in the bottom middle" do
    		board = ["X", "X", nil, "O", nil, nil, "O", nil, "O"]
    		expect(@player.find_winning_cell(board, "O")).to eq(8)
    	end

    	it "should find a horizontal winning spot in the top left" do
    		board = [nil, "O", "O", "X", "X", nil, "O", nil, nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(1)
    	end

    	it "should find a horizontal winning spot in the center left" do
    		board = ["X", "X", nil, nil, "O", "O", "O", nil, nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(4)
    	end

    	it "should find a horizontal winning spot in the bottom left" do
    		board = ["O", "O", nil, "X", nil, nil, nil, "X", "X"]
    		expect(@player.find_winning_cell(board, "X")).to eq(7)
    	end
    
    end

  	describe "finding two of a kind vertically" do

    	it "should find a vertical winning spot in the top right" do
    		board = ["O", "X", nil, "X", nil, "O", "X", "X", "O"]
    		expect(@player.find_winning_cell(board, "O")).to eq(3)
    	end

    	it "should find a vertical winning spot in the middle right" do
    		board = ["X", nil, "O", "O", "X", nil, "X", "X", "O"]
    		expect(@player.find_winning_cell(board, "O")).to eq(6)
    	end

    	it "should find a vertical winning spot in the bottom right" do
    		board = [nil, nil, "O", "X", "X", "O", "O", "X", nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(9)
    	end

    	it "should find a vertical winning spot in the top middle" do
    		board = [nil, nil, nil, "X", "O", nil, nil, "O", nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(2)
    	end

    	it "should find a vertical winning spot in the center middle" do
    		board = ["X", "O", nil, nil, nil, nil, nil, "O", nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(5)
    	end

    	it "should find a vertical winning spot in the bottom middle" do
    		board = ["O", "X", nil, nil, "X", nil, nil, nil, "X"]
    		expect(@player.find_winning_cell(board, "X")).to eq(8)
    	end

    	it "should find a vertical winning spot in the top left" do
    		board = [nil, nil, "O", "O", "X", nil, "O", nil, nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(1)
    	end

    	it "should find a vertical winning spot in the center left" do
    		board = ["O", "X", nil, nil, "X", "O", "O", nil, nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(4)
    	end

    	it "should find a vertical winning spot in the bottom left" do
    		board = ["O", "X", nil, "O", nil, nil, nil, nil, nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(7)
    	end
    
    end

    describe "finding two of a kind diagonally" do

    	it "should find a diagonal winning spot in the top right" do
    		board = [nil, "X", nil, nil, "O", nil, "O", "X", nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(3)
    	end

    	it "should find a diagonal winning spot in the bottom right" do
    		board = ["X", nil, nil, nil, "X", nil, nil, nil, nil]
    		expect(@player.find_winning_cell(board, "X")).to eq(9)
    	end

    	it "should find a diagonal winning spot in the center middle, positive slope" do
    		board = [nil, nil, "O", nil, nil, nil, "O", nil, nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(5)
    	end

    	it "should find a diagonal winning spot in the center middle, negative slope" do
    		board = ["O", nil, nil, nil, nil, nil, nil, nil, "O"]
    		expect(@player.find_winning_cell(board, "O")).to eq(5)
    	end

    	it "should find a diagonal winning spot in the top left" do
    		board = [nil, nil, nil, nil, "X", nil, nil, nil, "X"]
    		expect(@player.find_winning_cell(board, "X")).to eq(1)
    	end

    	it "should find a diagonal winning spot in the bottom left" do
    		board = [nil, "X", "O", nil, "O", nil, nil, nil, nil]
    		expect(@player.find_winning_cell(board, "O")).to eq(7)
    	end
    
    end

    describe "verifying that a spot is not taken" do

        it "should not find a diagonal winning spot in the top right" do
            board = [nil, nil, "X", nil, "O", nil, "O", nil, nil]
            expect(@player.find_winning_cell(board, "O")).to eq(nil)
        end

        it "should not find a horizontal winning spot in the bottom right" do
            board = [nil, nil, nil, nil, nil, nil, "X", "X", "O"]
            expect(@player.find_winning_cell(board, "X")).to eq(nil)
        end

        it "should not find a vertical winning spot in the center middle" do
            board = [nil, "O", nil, nil, "X", nil, nil, "O", nil]
            expect(@player.find_winning_cell(board, "O")).to eq(nil)
        end

        it "should not find a vertical winning spot in the top left" do
            board = ["O", "X", nil, "X", "O", nil, "X", "O", nil]
            expect(@player.find_winning_cell(board, "X")).to eq(nil)
        end
    
    end

    describe "verify no winning moves" do

        it "should find no winning moves on a blank board" do
            board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
            expect(@player.find_winning_cell(board, "O")).to eq(nil)
            expect(@player.find_winning_cell(board, "X")).to eq(nil)
        end

        it "should find no winning moves on a partially filled board" do
            board = ["O", "X", nil, nil, nil, nil, nil, "O", nil]
            expect(@player.find_winning_cell(board, "O")).to eq(nil)
            expect(@player.find_winning_cell(board, "X")).to eq(nil)
        end
    
    end

    describe "random move" do

        it "should return an Integer" do
            board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
            expect(@player.random_move(board)).to be_a_kind_of Integer
        end

        it "should fill in a random move on an empty board" do
            board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
            expect(@player.random_move(board)).to be >= 1
            expect(@player.random_move(board)).to be <= 9
        end
        
        it "should avoid a filled cell" do
            board = ["X", "O", "X", nil, nil, nil, "O", "X", "O"]
            expect(@player.random_move(board)).to be >= 4
            expect(@player.random_move(board)).to be <= 6
        end
    
    end
    
    describe "choosing a move" do
      
      it "should find a horizontal winning cell for O" do
            board = ["O", nil, "O", nil, nil, nil, nil, nil, nil]
            expect(@player.decide_move(board)).to eq(2)
      end
      
      it "should find a vertical winning cell for O" do
            board = ["O", nil, nil, "O", nil, nil, nil, nil, nil]
            expect(@player.decide_move(board)).to eq(7)
      end
      
      it "should find a diagonal winning cell for O" do
            board = ["O", nil, nil, nil, "O", nil, nil, nil, nil]
            expect(@player.decide_move(board)).to eq(9)
      end
      
      it "should find a random move" do
            board = ["X", "O", "O", nil, nil, nil, nil, nil, nil]
            expect(@player.decide_move(board)).to be > 3
      end
      
      it "should find a horizontal winning cell for O while there is other stuff on the board" do
            board = ["O", nil, "O", "X", "X", nil, nil, nil, "X"]
            expect(@player.decide_move(board)).to eq(2)
      end
      
      it "should counter a winning move for X" do
            board = ["O", nil, nil, "X", "X", nil, nil, nil, "X"]
            expect(@player.decide_move(board)).to eq(6)
      end
      
    end

  end
  
end