class Customer
  attr_accessor :name, :wallet
  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buys_drink(drink_choice, tavern)
    cost = tavern.get_drink_price(drink_choice)
    @wallet -= cost
  end
end
