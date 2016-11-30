require_relative ('board.rb')
require_relative ('player.rb')
require_relative ('space.rb')

class Game

  def setup_and_play()
    board = Board.new()
    player_1 = Player.new("Dave")
    player_2 = Player.new("Harrison")
    
    # Create Spaces
      space_0 = Space.new()
      space_1 = Space.new()
      space_2 = Space.new()
      space_3 = Space.new()
      space_4 = Space.new()
      space_5 = Space.new()
      space_6 = Space.new()
      space_7 = Space.new()
      space_8 = Space.new()
      space_9 = Space.new()
      space_10 = Space.new()
      space_11 = Space.new()
      space_12 = Space.new()
      space_13 = Space.new()
      space_14 = Space.new()
      space_15 = Space.new()
      space_16 = Space.new()
      space_17 = Space.new()
      space_18 = Space.new()
      space_19 = Space.new()
      space_20 = Space.new()

    # Add Spaces to board
      board.add_space_normal(space_0)
      board.add_space_normal(space_1)
      board.add_space_special(space_2, 8) #ladder
      board.add_space_normal(space_3)
      board.add_space_normal(space_4)
      board.add_space_normal(space_5)
      board.add_space_special(space_6, 1) #snake
      board.add_space_normal(space_7)
      board.add_space_normal(space_8)
      board.add_space_normal(space_9)
      board.add_space_special(space_10, 5) #snake
      board.add_space_normal(space_11)
      board.add_space_special(space_12, 15) #ladder
      board.add_space_normal(space_13)
      board.add_space_normal(space_14)
      board.add_space_normal(space_15)
      board.add_space_normal(space_16)
      board.add_space_special(space_17, 11) #snake
      board.add_space_normal(space_18)
      board.add_space_normal(space_19)
      board.add_space_normal(space_20)

      board.add_player(player_1)
      board.add_player(player_2)

    while board.winner() == nil
      board.players.cycle do |player|

        player.move(board)
        position_before_set = player.current_space()
        puts "#{player.name()} has moved to space #{player.current_space()}"
        player.set(board.spaces[player.current_space].end_space)
        position_after_set = player.current_space()

        if position_after_set != position_before_set
          puts "#{player.name()} has been warped to space #{player.current_space()}"
        end

        if player.has_won?(board) == true
          puts "Someone has won..."
          board.winner = player.name()
          break
        end
        puts ""
      end
      puts "Winner: #{board.winner()}"
    end
  end
  end

game = Game.new()

game.setup_and_play()

