require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../board')
require_relative ('../player')
require_relative ('../space')

class SpaceSpec < MiniTest::Test
  
#--------------Setup-----------------
  def test_can_create_space
    space = Space.new()
    assert_equal(Space, space.class)
  end

  def test_end_space_starts_nil
    space = Space.new()
    assert_equal(nil, space.end_space())
  end
#------------------------------------



end
