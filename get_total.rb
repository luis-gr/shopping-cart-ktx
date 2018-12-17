class GetTotal

    def self.apply_pricing_rules_and_calculate(cart, pricing_rules)
        case pricing_rules
        when "none"
            GetTotal.final_price(cart)
        when "all"
            Offers.apply_ceo_offer(cart)
            Offers.apply_coo_offer(cart)
            Offers.apply_cto_offer(cart)

            GetTotal.final_price(cart)
        when "CEO_offer"
            Offers.apply_ceo_offer(cart)

            GetTotal.final_price(cart)
        when "COO_offer"
            Offers.apply_coo_offer(cart)

            GetTotal.final_price(cart)
        when "CTO_offer"
            Offers.apply_cto_offer(cart)

            GetTotal.final_price(cart)
        end
    end

    def self.final_price(cart)
        total = 0
    
        ["GR1", "SR1", "CF1"].each do |code|
            item_hash = cart.find {|hash| hash[:product_code] == code}
            unless item_hash.nil?
                item_price = item_hash[:price] * item_hash[:qty]
                total += item_price
            end
        end
    
        puts "Cart Total: #{total.round(2)}"

        total.round(2)
    end

end