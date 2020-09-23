class Game
  def initialize(player, computer)
    @player = player
    @computer = computer
    @rock = 'rock'
    @paper = 'paper'
    @scissors = 'scissors'
  end
  
  def get_winner
    # 0 = tie; 1 = player win; 2 = computer win
    if @player === @computer
      0
    elsif @player === 'scissors' && @computer === 'paper'
      1
    end
  end

  def winning_move
  end
end