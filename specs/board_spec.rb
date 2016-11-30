require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../board')
require_relative ('../player')
require_relative ('../space')

class BoardSpec < MiniTest::Test

#--------------Setup-----------------
  def test_can_create_board
    board = Board.new()
    assert_equal(Board, board.class)

  end

  def test_all_start_empty
    board = Board.new()
    assert_equal(0, board.players.count())
    assert_equal(0, board.spaces.count())
  end

  def test_can_add_players
    board = Board.new()
    player = Player.new("Morag")

    board.add_player(player)
    assert_equal(1, board.players.count())
  end

  def test_can_add_space_normal
    board = Board.new()
    space = Space.new()

    board.add_space_normal( space )

    assert_equal(1, board.spaces.count())
    assert_equal(0, space.end_space())
  end

  def test_can_add_space_special
    board = Board.new()
    space = Space.new()

    board.add_space_special( space, 3 )

    assert_equal(1, board.spaces.count())
    assert_equal(3, space.end_space())
    assert_equal(0, board.spaces.index(space))
  end
#------------------------------------




end
