class Change
  attr_accessor(:amount)
  attr_reader(:coins)
  def initialize(amount)
    @amount = amount.to_i
    @coins = {"Quarters"=>0,"Dimes"=>0, "Nickels"=>0,"Pennies"=>0}
  end

  def get_change
    @coins.store('Quarters', @amount / 25)
    @amount %= 25
    @coins.store('Dimes', @amount / 10)
    @amount %= 10
    @coins.store('Nickels', @amount / 5)
    @amount %= 5
    @coins.store('Pennies', @amount)
  end
end