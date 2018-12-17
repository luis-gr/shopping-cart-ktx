require "minitest/autorun"
require_relative 'checkout'

class CheckoutMinitest < Minitest::Test

  def setup 
    @co = Checkout.new("all")
  end

  def teardown
    puts "---"
    puts "Test Complete & Passed"
    puts "---"
  end

  def test_cart_1
    ["GR1","SR1","GR1","GR1","CF1"].each do |code|
      @co.scan(code)
    end
    assert_equal 22.45, @co.total
  end

  def test_cart_2
    ["GR1","GR1"].each do |code|
      @co.scan(code)
    end
    assert_equal 3.11, @co.total
  end

  def test_cart_3
    ["SR1","SR1","GR1","SR1"].each do |code|
      @co.scan(code)
    end
    assert_equal 16.61, @co.total
  end

  def test_cart_4
    ["GR1","CF1","SR1","CF1","CF1"].each do |code|
      @co.scan(code)
    end
    assert_equal 30.58, @co.total
  end
  
end