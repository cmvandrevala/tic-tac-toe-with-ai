#Tic-Tac-Toe With AI

This gem gives the tools needed to play a game of tic-tac-toe.  It also includes an unbeatable computer player.

## Installation

Add this line to your application's Gemfile:

    gem 'tic-tac-toe-with-ai'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic-tac-toe-with-ai

## Usage

In order to start a new game of tic-tac-toe, use the command:

	$ game = TicTacToe::Game.new

The spaces on the tic-tac-toe grid are labeled 1-9.  In order to make a move in a space, type:

	$ game.move(space)

The program will take care of marking "X" and "O" appropriately. In order to have the computer decide where to move, use the command:

	$ ai_move = game.computer_player.decide_move(game.board.return_entire_board)
	$ game.move(ai_move)

The winner method returns the winner of the game (if one exists):

	$ game.winner

The tie method determines if the game is a tie:

	$ game.tie

## Contributing

1. Fork it ( https://github.com/cmvandrevala/tic-tac-toe-with-ai/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

