require "minitest/autorun"

# INSTRUCTIONS
# 1. Read this article on Blocks, Procs, and Lambdas (cmd + click on link)
# https://www.theodinproject.com/lessons/ruby-blocks
# 2. Add code to make tests pass

def do_three_times
  # perform an operation from a block 3 times
  # Input: do_three_times { puts "Hello!" }
  # Output: Hello!
  #         Hello!
  #         Hello!
  # write code here 
  3.times do 
    yield
  end
end

def only_if_block
  # ensure code is executed only if a block is given
  # write code here
  if block_given?
    yield
  end
end

def turn_to_integers(arr)
  # given an array of strings of numbers, use what you learned about procs
  # to turn each element in the array into an integer
  # Input: ["1", "2", "3"]
  # Output: [1, 2, 3]
  # write your code here
  arr.map!(&:to_i)
  return arr
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestBlocksProcsLambdas < Minitest::Test
  def test_do_three_times
    
    out, _err = capture_io do 
      do_three_times { puts "Hello!" }
    end
    assert_equal(21, out.length)
  end

  def test_only_if_block_calls_block_if_one_is_given
    
    called = false
    only_if_block do 
      called = true
    end
    assert(called)
  end

  def test_only_if_block_does_not_call_block_if_none_given
    
    assert_nil(only_if_block)
  end

  def test_turn_to_integers
    
    assert_equal([1,2,3], turn_to_integers(["1", "2", "3"]))
    assert_equal([4,5,6,7,8], turn_to_integers(["4", "5", "6", "7", "8"]))
    assert_equal([376, 847234, 32498738], turn_to_integers(["376", "847234", "32498738"]))
  end
end
