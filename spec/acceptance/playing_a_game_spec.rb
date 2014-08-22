require "tic_tac_toe/game"
require "tic_tac_toe/board"
require "tic_tac_toe/rules"
require "computer_player/computer_player"

describe "playing a game" do

  it "starts a game in progress" do
    game = TicTacToe::Game.new
    expect(game).to be_in_progress
    expect(game.winner).to be_nil
  end

  it "wins for X" do
    game = TicTacToe::Game.new

    game.move(1)
    game.move(4)
    game.move(2)
    game.move(5)
    game.move(3)

    expect(game).not_to be_in_progress
    expect(game.winner).to eq("X")
  end

  it "wins for O" do
    game = TicTacToe::Game.new

    game.move(4)
    game.move(1)
    game.move(5)
    game.move(2)
    game.move(7)
    game.move(3)

    expect(game).not_to be_in_progress
    expect(game.winner).to eq("O")
  end
  
  it "ties a game" do
    game = TicTacToe::Game.new

    game.move(1)
    game.move(2)
    game.move(3)
    game.move(4)
    game.move(6)
    game.move(5)
    game.move(7)
    game.move(9)
    game.move(8)

    expect(game).not_to be_in_progress
    expect(game.winner).to eq("tie")
  end
  
  it "lets the computer win" do
    game = TicTacToe::Game.new
    
    game.move(1)
    game.move(2)
    game.move(3)
    game.move(5)
    game.move(9)

    ai_move = game.computer_player.decide_move(game.board.return_entire_board)
    expect(ai_move).to eq(8)
    
    game.move(ai_move)
    
    expect(game).not_to be_in_progress
    expect(game.winner).to eq("O")
    
  end
    

end
