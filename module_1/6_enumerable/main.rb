require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following passage about Enumerable on The Odin Project (cmd+click on link below):
# https://www.theodinproject.com/lessons/ruby-basic-enumerable-methods
# 2. Write code below to make tests pass
# 3. Suggestion: go one method at a time until all tests pass

def uppercase_all_the_things(arr)
  array = ["hello", "world"]
  array.map! { |word| word.upcase}
  return array
  # Turn each element in the provided array into uppercase letters
  # Return the array
  # Input: ["hello", "world"]
  # Output: ["HELLO", "WORLD"]
  # write your code here
end

def reject_all_even(arr)
  array = [1,2,3,4,5]
  array.reject! { |number| number.even?}
  return array
  # Reject all numbers in the array provided that are not even numbers
  # Return array
  # Input: [1,2,3,4,5]
  # Output: [1,3,5]
  # write your code here
end

def select_all_even(arr)
  array = [1,2,3,4,5,6]
  array.select! { |number| number.even?}
  return array
  # Select all numbers in the array provided that are even numbers
  # Return array
  # Input: [1,2,3,4,5]
  # Output: [2,4]
  # write your code here
end

def double_all_numbers(arr)
  array = [2,3,4,5,6]
  array.map! { |number| number ** 2}
  return array
  # Double each number in the array provided
  # Return the array
  # Input: [2,3,4] 
  # Output: [2,6,8]
  # hint: look for the ! operator
  # write your code here
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestEnumerable < Minitest::Test
  def test_uppercase_all_the_things
    
    assert_equal(["HELLO", "WORLD"], uppercase_all_the_things(["hello", "world"]))
  end
  
  def test_reject_all_even
    
    assert_equal([1,3,5], reject_all_even([1,2,3,4,5,6]))
  end
  
  def test_select_all_even
    
    assert_equal([2,4,6], select_all_even([1,2,3,4,5,6]))
  end
  
  def test_double_all_numbers
    
    assert_equal([4,9,16,25,36], double_all_numbers([2,3,4,5,6]))
  end
end
