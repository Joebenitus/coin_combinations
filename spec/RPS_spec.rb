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
end