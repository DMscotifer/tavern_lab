require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../tavern.rb")

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Corona", 4, 2)
  end

  def test_drink_name()
    assert_equal("Corona", @drink1.name)
  end

  def test_drink_price()
    assert_equal(4, @drink1.price)
  end

  def test_drink_alcohol_level()
    assert_equal(2, @drink1.alcohol_level)
  end

end
