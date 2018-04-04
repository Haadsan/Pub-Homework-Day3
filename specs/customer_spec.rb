require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class CustomerTest < MiniTest::Test

def setup()
  @drink1 = Drink.new("Vodka", 5.00)
  @drink2 = Drink.new("Beer", 3.00)
  @drink3 = Drink.new("Wine", 4.00 )
  @drink4 = Drink.new("Lemonade", 1.50)
@drink = [@drink1, @drink2, @drink3, @drink4]
@customer = Customer.new("Bob", 50.00)
    @pub = Pub.new("Harkin's bar", 100, @drink)

end

def test_customer_name()

assert_equal("Bob" , @customer.customer_name)
end

def test_wallet_contents()

assert_equal(50.00 , @customer.wallet_contents)
end

def test_customer_drink_count
assert_equal(0,@customer.customer_drink_count)
end


def test_customer_drink_count_is_one()
  @customer.customer_gets_drink(@pub)
assert_equal(1, @customer.customer_drink_count())
end


end
