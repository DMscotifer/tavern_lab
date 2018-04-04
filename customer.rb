class Customer
  attr_accessor :name, :wallet, :age
  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def buys_drink(drink_choice, tavern)
    cost = tavern.get_drink_price(drink_choice)
    @wallet -= cost
  end

  def check_customer_age()
    return true if @age >= 18
  end
end
