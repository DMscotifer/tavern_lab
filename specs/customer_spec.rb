require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../tavern.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Homer", 50, 42, 0)
    @drink1 = Drink.new("Duff", 3, 3)
    @drink2 = Drink.new("Corona", 4, 2)
    @drink3 = Drink.new("Tennents", 3, 2)
    @drinks_menu = [@drink1, @drink2, @drink3]
    # @drinks_menu = ["Duff", "Corona", "Tennents"]
    @tavern1 = Tavern.new("Mo's Tavern", 200, @drinks_menu)
  end

  def test_customer_name()
    assert_equal("Homer", @customer1.name)
  end

  def test_customer_wallet()
    assert_equal(50, @customer1.wallet)
  end

  def test_buys_drink()
    @customer1.buys_drink("Duff", @tavern1)
    assert_equal(47, @customer1.wallet)
  end

  def test_measure_drunkenness()
    assert_equal(0, @customer1.drunkenness)
  end

  def test_too_drunk()
    @customer1.drunkenness = 9
    assert_equal(true, @customer1.too_drunk)
  end

  # def test_buys_drink__refused()
  #
  # end

end
