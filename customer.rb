class Customer
  attr_accessor :name, :wallet, :age, :drunkenness
  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buys_drink(drink_choice, tavern)
    cost = tavern.get_drink_price(drink_choice)
    @wallet -= cost
  end

  def check_customer_age()
    return true if @age >= 18
  end

  def too_drunk()
    @drunkenness >= 8
  end

end
