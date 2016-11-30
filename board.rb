require_relative ('player')
require_relative ('space')

class Board

  attr_reader :players, :spaces
  attr_accessor :winner

#--------------Setup-----------------
  def initialize()
    @players = []
    @spaces = []
    @winner = nil
  end

  def add_player(player)
    @players.push(player)
  end

  def add_space_normal( space )
    @spaces.push( space )
    space.end_space = @spaces.index(space)
  end

  def add_space_special( space, end_space )
    @spaces.push( space )
    space.end_space = end_space 
  end
#------------------------------------

end