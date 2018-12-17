class ScanItem

  def self.add_to_cart(cart, product_code)
    begin
      existing_product = cart.find {|hash| hash[:product_code] == product_code}

      if existing_product
        existing_product[:qty] += 1
        puts "Added 1 x #{existing_product[:name]}"
      else
        new_product = Product.create_product(product_code)
        cart.push(new_product)
        puts "Added 1 x #{new_product[:name]}"
      end
    rescue
      puts "Cart has not been updated"
    end
  end

end