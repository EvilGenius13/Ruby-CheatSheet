require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following passage about Hashes on The Odin Project (cmd+click on link below):
# https://www.theodinproject.com/lessons/ruby-hashes
# 2. Write code below to make tests pass
# 3. Suggestion: go one method at a time until all tests pass

DRINK_MENU = {
  coffee: 1.5,
  tea: 1,
  cocoa: 2,
}

def return_all_drink_values
  output = DRINK_MENU.map { |k,v| v }# Output: [1.5, 1, 2]
  return output
  # write your code here
end

def return_all_drink_keys
  output = DRINK_MENU.map { |k,v| k }
  # Output: ["coffee", "tea", "cocoa"]
  # write your code here
end

def get_price_of_drink(drink)
  output = DRINK_MENU[drink.to_sym]
  return output
  # Input: "coffee"
  # Output: 1.5
  # hint: you will need to ensure drink is a symbol
  # write your code here
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestHashes < Minitest::Test
  def test_return_all_drink_values
    
    expected_output = [1.5, 1, 2]
    assert_equal(expected_output, return_all_drink_values)
  end
  
  def test_return_all_drink_keys
    
    expected_output = [:coffee, :tea, :cocoa]
    assert_equal(expected_output, return_all_drink_keys)
  end
  
  def test_get_price_of_drink
    
    assert_equal(1.5, get_price_of_drink("coffee"))
    assert_equal(1, get_price_of_drink("tea"))
    assert_equal(2, get_price_of_drink("cocoa"))
  end
end
