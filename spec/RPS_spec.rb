require('rspec')
require('RPS')

describe('Game') do
  it('checks for a tie') do
    test = Game.new('rock', 'rock')
    expect(test.get_winner).to(eq(0))
  end
  it('returns winning player for scissors and paper') do
    test = Game.new('scissors', 'paper')
    expect(test.get_winner).to(eq(1))
  end
  it('returns winning player for rock and scissors') do
    test = Game.new('rock', 'scissors')
    expect(test.get_winner).to(eq(1))
  end
  it('returns winning player for paper and rock') do
    test = Game.new('paper', 'rock')
    expect(test.get_winner).to(eq(1))
  end
  it('returns winning player for paper and scissors') do
    test = Game.new('paper', 'scissors')
    expect(test.get_winner).to(eq(2))
  end
  it('returns winning player for scissors and rock') do
    test = Game.new('scissors', 'rock')
    expect(test.get_winner).to(eq(2))
  end
  it('returns winning player for rock and paper') do
    test = Game.new('rock', 'paper')
    expect(test.get_winner).to(eq(2))
  end
  it('gives output that displays a game resulting in a tie') do
    test = Game.new('paper', 'paper')
    expect(test.output).to(eq("It's a tie! You both chose paper!"))
  end
  it('gives output that displays when the user wins') do
    test = Game.new('paper', 'rock')
    expect(test.output).to(eq("You win! Your opponent chose rock!"))
  end
  it('gives output that displays when the user loses') do
    test = Game.new('rock', 'paper')
    expect(test.output).to(eq("You lose. Your opponent chose paper."))
  end
end