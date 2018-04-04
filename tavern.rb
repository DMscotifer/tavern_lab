class Tavern
  attr_accessor :name, :till, :drinks
    def initialize(name, till, drinks)
      @name = name
      @till = till
      @drinks = drinks
  end

  def get_drinks_count()
    return @drinks.count
  end

  def find_drink_by_name(drink_choice)
    for drink in drinks
      if drink.name == drink_choice
        return drink.name
      end
      return nil
    end
  end

  def get_drink_price(drink_name)
    for drink in drinks
      if drink.name == drink_name
        return drink.price
      end
    end
  end

  def get_drink_alcohol_level(drink_name)
    for drink in drinks
      if drink.name == drink_name
        return drink.alcohol_level
      end
    end
  end


  def customer_buys_drink(drink_choice, customer)
    if customer.check_customer_age == true
      cost = get_drink_price(drink_choice)
      @till += cost
      add_drunk = get_drink_alcohol_level(drink_choice)
      customer.drunkenness += add_drunk
    end
  end



end
