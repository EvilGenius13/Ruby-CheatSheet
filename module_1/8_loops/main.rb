require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following passage about Loops on The Odin Project (cmd+click on link below):
# https://www.theodinproject.com/lessons/ruby-loops
# 2. Write code below to make tests pass
# 3. Suggestion: go one method at a time until all tests pass

def annoying_greeting
  10.times do
    puts "hello!"
  end
  # say "hello!" 10 times using a loop
  # write your code here
end

def double_it(arr)
  arr.map! do |num| num ** 2
  end
  return arr
  # use a loop to double each integer in the provided array
  # return the new array
  # Input: [2,3,4]
  # Output: [4,9,16]
  # write your code here
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestLoops < Minitest::Test
  def test_annoying_greeting

    output = annoying_greeting
    assert_equal(10, output)
  end
  
  def test_double_it
    
    assert_equal([4,9,16], double_it([2,3,4]))
    assert_equal([25,36,49], double_it([5,6,7]))
    assert_equal([100,400,900], double_it([10,20,30]))
  end
end
