# shopping-cart-ktx

To run the function on IRB, run:
require './checkout.rb'
co = Checkout.new(pricing_rules)

, where pricing_rules accepts values: "all", "none", "CEO_offer", "COO_offer", "CTO_offer"
pricing_rules inputs are case sensitive.

Tests:
To test the function on IRB, run:
require './checkout_test.rb'
, then exit, test results will print out.
