require './offers.rb'
require './product.rb'
require './scan_item.rb'
require './get_total.rb'

class Checkout

  attr_accessor :cart
  attr_accessor :pricing_rules

  def initialize(pricing_rules)
    @cart = []
    @pricing_rules = pricing_rules
  end

  def scan(item)
    ScanItem.add_to_cart(@cart, item)
  end

  def total
    GetTotal.apply_pricing_rules_and_calculate(@cart, @pricing_rules)
  end

end

########### README ###########
# To run the function on IRB, run:
# require './checkout.rb'
# co = Checkout.new(pricing_rules)

# , where pricing_rules accepts values: "all", "none", "CEO_offer", "COO_offer", "CTO_offer"
# pricing_rules inputs are case sensitive.

########### TESTS ###########
# To test the function on IRB, run:
# require './checkout_test.rb'
# , then exit, test results will print out.