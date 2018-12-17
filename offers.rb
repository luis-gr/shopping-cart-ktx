class Offers

  def self.apply_ceo_offer(cart)
    # buy-one-get-one-free offers of green tea
    green_tea = cart.find {|hash| hash[:product_code] == "GR1"}

    unless green_tea.nil?
      if green_tea[:qty] % 2 == 0
        green_tea[:qty] = green_tea[:qty] * 0.5
      else
        green_tea[:qty] = green_tea[:qty] - 1
        green_tea[:qty] = green_tea[:qty] * 0.5
        green_tea[:qty] = green_tea[:qty] + 1
      end
    end
  end

  def self.apply_coo_offer(cart)
    # buy 3 or more strawberries, the price should drop to £4.50
    strawberries = cart.find {|hash| hash[:product_code] == "SR1"}

    unless strawberries.nil?
      if strawberries[:qty] >= 3
        strawberries[:price] = 4.50
      end
    end
  end

  def self.apply_cto_offer(cart)
    # buy 3 or more coffees, the price of all coffees should drop to two thirds of the original price
    coffee = cart.find {|hash| hash[:product_code] == "CF1"}

    unless coffee.nil?
      if coffee[:qty] >= 3
        coffee[:price] = (coffee[:price] * (2.0/3.0)).round(2)
      end
    end
  end

end