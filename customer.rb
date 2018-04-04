class Customer
  attr_accessor :name, :wallet
  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buys_drink(drink_choice, tavern)
    # if find_drink_by_name(drink_choice) != nil
    cost = tavern.get_drink_price(drink_choice)
      @wallet -= cost
      # tavern.customer_buys_drink(drink_choice)
    # end
  end

end
