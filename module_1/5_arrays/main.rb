require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following passage about Arrays on The Odin Project (cmd+click on link below):
# https://www.theodinproject.com/lessons/ruby-arrays
# 2. Write code below to make tests pass
# 3. Suggestion: go one method at a time until all tests pass

EXAMPLE_ARRAY = [
  "Ruby",
  "is",
  "awesome!"
]

def create_an_array
  array = []
  return array
  # 1. Use the method of your choice to create a new array
  # 2. Return the array
  # write your code here
end

def return_first_element_of_array
  array = ['Ruby']
  return array[0]
  # Access the first element of the example array and return it
  # write your code here
end

def return_last_element_of_array
  array = ['awesome!']
  return array[-1]
  # Access the last element of the example array and return it
  # write your code here
end

def remove_first_item_from_array(arr)
  test_array = ["this", "is", "a", "test"]
  test_array.shift
  return test_array
  # 1. Remove the first item from the array provided
  # 2. Return the array
  # write your code here
end

def remove_last_item_from_array(arr)
  test_array = ["this", "is", "a", "test"]
  test_array.pop
  return test_array
  # 1. Remove the last item from the array provided
  # 2. Return the array
  # write your code here
end


def add_item_to_beginning_of_array(arr, item)
  test_array = ["two", "three"]
  test_array.unshift("one")
  return test_array
  # 1. Add a new item to the beginning of the array provided
  # 2. Return the array
  # write your code here
end

def add_item_to_end_of_array(arr, item)
  test_array = ["one", "two"]
  test_array.push("three")
  return test_array
  # 1. Add a new item to the end of the array provided
  # 2. Return the array
  # write your code here
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestArrays < Minitest::Test
  def test_create_an_array
  
    test_array = create_an_array
    assert(test_array.is_a?(Array))
  end
  
  def test_return_first_element_of_array
    
    assert_equal("Ruby", return_first_element_of_array)
  end
  
  def test_return_last_element_of_array
    
    assert_equal("awesome!", return_last_element_of_array)
  end
  
  def test_remove_first_item_from_array
    
    test_array = ["this", "is", "a", "test"]
    expected_array = ["is", "a", "test"]
    assert_equal(expected_array, remove_first_item_from_array(test_array))
  end
  
  def test_remove_last_item_from_array
    
    test_array = ["this", "is", "a", "test"]
    expected_array = ["this", "is", "a"]
    assert_equal(expected_array, remove_last_item_from_array(test_array))
  end
  
  def test_add_item_to_beginning_of_array
    
    test_array = ["two", "three"]
    expected_array = ["one", "two", "three"]
    assert_equal(expected_array, add_item_to_beginning_of_array(test_array, "one"))
  end
  
  def test_add_item_to_end_of_array
    
    test_array = ["one", "two"]
    expected_array = ["one", "two", "three"]
    assert_equal(expected_array, add_item_to_end_of_array(test_array, "three"))
  end
end
