require "tic_tac_toe/game"

describe TicTacToe::Game do
  
  before(:each) do
    @game = TicTacToe::Game.new
  end
  
  it "start in progress" do
    expect(@game).to be_in_progress
  end

  it "start with no winner" do
    expect(@game.winner).to be_nil
  end
  
  describe "making moves" do
    it "inserts an X into position 1" do
      @game.move(1)
      expect(@game.get_mark_at(1)).to eq("X") 
    end
  
    it "inserts an O into position 5" do
      @game.move(1)
      @game.move(5)
      expect(@game.get_mark_at(5)).to eq("O") 
    end
  
    it "makes a second move for X" do
      @game.move(1)
      @game.move(5)
      @game.move(3)
      expect(@game.get_mark_at(3)).to eq("X") 
    end
  end

  describe "the end game state" do
    context "when X wins in the top row" do
      before(:each) do
        @game.move(1)
        @game.move(8)
        @game.move(2)
        @game.move(7)
        @game.move(3)
      end

      it "is no longer in progress" do
        expect(@game).not_to be_in_progress
      end
    
      it "has a winner" do
        expect(@game.winner).to eq("X")
      end
      
    end

    context "when O wins in the top row" do
      before(:each) do
        @game.move(7)
        @game.move(1)
        @game.move(8)
        @game.move(2)
        @game.move(4)
        @game.move(3)
      end

      it "is no longer in progress" do
        expect(@game).not_to be_in_progress
      end

      it "has a winner" do
        expect(@game.winner).to eq("O")
      end

    end
    
    context "when there is a tie" do
      before(:each) do
        @game.move(1)
        @game.move(2)
        @game.move(3)
        @game.move(4)
        @game.move(6)
        @game.move(5)
        @game.move(7)
        @game.move(9)
        @game.move(8)
      end

      it "is no longer in progress" do
        expect(@game).not_to be_in_progress
      end
    
      it "has no winner" do
        expect(@game.winner).to eq("tie")
      end
      
    end
    
  end


end
