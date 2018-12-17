class Product

  def self.create_product(product_code)

    case product_code
    when "GR1"
      {:product_code => "GR1", :name => "Green Tea", :price => 3.11, :qty => 1 }
    when "SR1"
      {:product_code => "SR1", :name => "Strawberries", :price => 5.00, :qty => 1 }
    when "CF1"
      {:product_code => "CF1", :name => "Coffee", :price => 11.23, :qty => 1 }
    else
      puts "Product #{product_code} does not exist"
    end
    
  end

end