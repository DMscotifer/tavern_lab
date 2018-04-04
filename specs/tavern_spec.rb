require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../tavern.rb")

class TavernTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Homer", 50, 42)
    @drink1 = Drink.new("Duff", 3)
    @drink2 = Drink.new("Corona", 4)
    @drink3 = Drink.new("Tennents", 3)
    @drinks_menu = [@drink1, @drink2, @drink3]
    # @drinks_menu = ["Duff", "Corona", "Tennents"]
    @tavern1 = Tavern.new("Mo's Tavern", 200, @drinks_menu)

  end

  def test_tavern_name()
    assert_equal("Mo's Tavern", @tavern1.name)
  end

  def test_tavern_till()
    assert_equal(200, @tavern1.till)
  end

  def test_tavern_drinks()
    assert_equal(3, @tavern1.get_drinks_count)
  end

  def test_return_all_drinks()
    assert_equal(@drinks_menu, @tavern1.drinks)
  end

  def test_find_drink_by_name__returns_drink()
    assert_equal("Duff", @tavern1.find_drink_by_name("Duff"))
  end

  def test_find_drink_by_name_nil_return()
    assert_nil(@tavern1.find_drink_by_name("Caesar Augustus"))
  end

  def test_get_drink_price()
    assert_equal(3, @tavern1.get_drink_price("Duff"))
  end

  def test_customer_buys_drink__increase_till()
    customer = @customer1
    @tavern1.customer_buys_drink("Duff", customer)
    assert_equal(203, @tavern1.till)
  end

  def test_check_customer_age__run_if_over_18()
    customer = @customer1
    @tavern1.customer_buys_drink("Duff", customer)
    assert_equal(203, @tavern1.till)
  end


end
