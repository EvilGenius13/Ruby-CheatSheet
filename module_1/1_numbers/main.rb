require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following passage about Numbers on The Odin Project (cmd+click on link below):
# https://www.theodinproject.com/lessons/ruby-basic-data-types#numbers
# 2. Write code below to make tests pass
# 3. To test a method, scroll down to line 55 and delete the "skip" from the test you want to work on
# 4. Repeat the process with all tests until they all pass

def sum_two_numbers(a, b)
  sum = a + b
  return sum
  # Input: 2, 2
  # Output: 4
  # write your code here
end

def subtract_two_numbers(a, b)
  sum = a - b
  return sum
  # Input: 2, 1
  # Output: 1
  # write your code here
end

def multiply_two_numbers(a, b)
  sum = a * b
  return sum
  # Input: 2, 2
  # Output: 4
  # write your code here
end

def divide_two_numbers(a, b)
  sum = a / b
  return sum
  # Input: 10, 2
  # Output: 5
  # write your code here
end

def get_remainder_of_division(a, b)
  sum = a % b
  return sum
  # Input: 15, 3
  # Output: 0
  # write your code here
end

def check_if_number_is_even(num)
  return num.even?
  # Input: 2
  # Output: true
  # write your code here
end

def check_if_number_is_odd(num)
  return num.odd?
  # Input: 3
  # Output: true
  # write your code here
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestNumbers < Minitest::Test
  def test_sum_two_numbers
    
    assert_equal(2, sum_two_numbers(1,1))
  end

  def test_subtract_two_numbers
    
    assert_equal(1, subtract_two_numbers(2,1))
  end
  
  def test_multiply_two_numbers
    
    assert_equal(4, multiply_two_numbers(2,2))
  end
  
  def test_divide_two_numbers
    
    assert_equal(5, divide_two_numbers(10,2))
  end
  
  def test_get_remainder_of_division
    
    assert_equal(0, get_remainder_of_division(15,3))
  end
  
  def test_check_if_number_is_even

    assert_equal(true, check_if_number_is_even(2))
    assert_equal(true, check_if_number_is_even(256))
    assert_equal(false, check_if_number_is_even(3))
    assert_equal(false, check_if_number_is_even(375))
  end
  
  def test_check_if_number_is_odd
    
    assert_equal(true, check_if_number_is_odd(3))
    assert_equal(true, check_if_number_is_odd(375))
    assert_equal(false, check_if_number_is_odd(2))
    assert_equal(false, check_if_number_is_odd(256))
  end
end
