class Game
  def initialize
    @rock = 'rock'
    @paper = 'paper'
    @scissors = 'scissors'
  end
  
  def get_winner(player, computer)
    if player === computer
      0
    end
  end
end