require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../board')
require_relative ('../player')
require_relative ('../space')

class PlayerSpec < MiniTest::Test

#--------------Setup-----------------
  def test_can_create_player
    player = Player.new("Morag")
    assert_equal(Player, player.class)

  end

  def test_player_name
    player = Player.new("Doreen")
    assert_equal('Doreen', player.name)

  end

  def test_player_start
    player = Player.new("Doreen")
    assert_equal(0, player.current_space)

  end
#------------------------------------

def test_can_player_move
  board = Board.new()
  player = Player.new("Rab")
  space_0 = Space.new()
  space_1 = Space.new()
  space_2 = Space.new()
  space_3 = Space.new()
  space_4 = Space.new()
  space_5 = Space.new()
  space_6 = Space.new()

  board.add_player(player)

  board.add_space_normal(space_0)
  board.add_space_normal(space_1)
  board.add_space_normal(space_2)
  board.add_space_normal(space_3)
  board.add_space_normal(space_4)
  board.add_space_normal(space_5)
  board.add_space_normal(space_6)

  player.move()

  assert_equal(true, player.current_space  > 0)
  assert_equal(true, player.current_space <= 6)
end


def test_set_destination__special
  board = Board.new()
  player = Player.new("Rab")
  space_0 = Space.new()
  space_1 = Space.new()
  space_2 = Space.new()
  space_3 = Space.new()
  space_4 = Space.new()
  space_5 = Space.new()
  space_6 = Space.new()

  board.add_player(player)

  board.add_space_normal(space_0)
  board.add_space_special(space_1, 3)
  board.add_space_normal(space_2)
  board.add_space_normal(space_3)
  board.add_space_normal(space_4)
  board.add_space_normal(space_5)
  board.add_space_normal(space_6)


  player.current_space = 1
  player.set(board.spaces[player.current_space].end_space)

  assert_equal(3, player.current_space)

end

def test_set_destination__normal
  board = Board.new()
  player = Player.new("Rab")
  space_0 = Space.new()
  space_1 = Space.new()
  space_2 = Space.new()
  space_3 = Space.new()
  space_4 = Space.new()
  space_5 = Space.new()
  space_6 = Space.new()

  board.add_player(player)

  board.add_space_normal(space_0)
  board.add_space_normal(space_1)
  board.add_space_normal(space_2)
  board.add_space_normal(space_3)
  board.add_space_normal(space_4)
  board.add_space_normal(space_5)
  board.add_space_normal(space_6)

  player.current_space = 4
  player.set(board.spaces[player.current_space].end_space)

  assert_equal(4, player.current_space)
end

def test_can_check_if_win
  board = Board.new()
  player = Player.new("Rab")
  space_0 = Space.new()
  space_1 = Space.new()
  space_2 = Space.new()
  space_3 = Space.new()
  space_4 = Space.new()
  space_5 = Space.new()
  space_6 = Space.new()

  board.add_player(player)

  board.add_space_normal(space_0)
  board.add_space_normal(space_1)
  board.add_space_normal(space_2)
  board.add_space_normal(space_3)
  board.add_space_normal(space_4)
  board.add_space_normal(space_5)
  board.add_space_normal(space_6)

  player.set(6)
  assert_equal(true, player.has_won?(board))
end


end
