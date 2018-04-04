require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../tavern.rb")

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Corona", 4)
  end

  def test_drink_name()
    assert_equal("Corona", @drink1.name)
  end

  def test_drink_price()
    assert_equal(4, @drink1.price)
  end
end
