require('rspec')
require('coin_combinations')

describe ('Change#intialize') do 
  it('stores amount') do 
    aj = Change.new(73)
    expect(aj.amount).to(eq(73)) 
  end
  it('calculates the amount of quarters') do 
    aj = Change.new(80)
    aj.get_change
    expect(aj.coins.fetch("Quarters")).to(eq(3)) 
  end
  it('calculates the amount of dimes') do 
    aj = Change.new(85)
    aj.get_change
    expect(aj.coins.fetch("Dimes")).to(eq(1)) 
  end
  it('calculates the amount of nickels') do 
    aj = Change.new(80)
    aj.get_change
    expect(aj.coins.fetch("Nickels")).to(eq(1)) 
  end
  it('calculates the amount of pennies') do 
    aj = Change.new(77)
    aj.get_change
    expect(aj.coins.fetch("Pennies")).to(eq(2)) 
  end
end