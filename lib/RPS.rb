class Game
  def initialize(player, computer)
    @player = player
    @computer = computer
  end
  
  def get_winner
    # 0 = tie; 1 = player win; 2 = computer win
    if @player === @computer
      0
    elsif ((@player == 'scissors') & (@computer == 'paper')) | ((@player == 'rock') & (@computer == 'scissors')) | ((@player == 'paper') & (@computer == 'rock'))
      1
    else
      2
    end
  end

  def output
    if self.get_winner == 0
      "It's a tie! You both chose #{@player}!"
    elsif self.get_winner == 1
      "You win! Your opponent chose #{@computer}!"
    elsif self.get_winner == 2
      "You lose. Your opponent chose #{@computer}."
    end
  end
end