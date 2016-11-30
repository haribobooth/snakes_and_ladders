require_relative ('board.rb')

class Player

  attr_reader :name
  attr_accessor :current_space

#--------------Setup-----------------
def initialize(name)
  @name = name
  @current_space = 0
  
end
#------------------------------------

def move(board)
  win_space = board.spaces.index(board.spaces.last())
  roll = rand(1..6)
  puts "#{@name} rolled a #{roll}"
  @current_space += roll
  if @current_space > win_space
    set(win_space)
  end
end


def set(destination)
  @current_space = destination
end

def has_won?( board )
  win_space = board.spaces.index(board.spaces.last())
  if @current_space == win_space
    return true
  end
end


end