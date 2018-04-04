require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../tavern.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Homer", 50)
    @drink1 = Drink.new("Duff", 3)
    @drink2 = Drink.new("Corona", 4)
    @drink3 = Drink.new("Tennents", 3)
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

end
