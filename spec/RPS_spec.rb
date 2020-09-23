require('rspec')
require('RPS')

describe('Game') do
  it('checks for a tie') do
    test = Game.new()
    expect(test.get_winner('rock', 'rock')).to(eq(0))
  end
end