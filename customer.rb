class Customer

def initialize(customer_name , wallet)

@customer_name = customer_name
@wallet = wallet
@drink = []
end

def customer_name()

  return @customer_name

end

def wallet_contents()
return @wallet
end

def customer_drink_count()
return @drink.count
end

def customer_gets_drink(pub)
drink = pub.sell_drink_to_customer(@drink1)
@drink.push(drink)

end

def customer_gives_money_to_the_pub(drink)
@wallet -= drink.drink_price
end
#if customer has bought drink @wallet -= drink price








end
