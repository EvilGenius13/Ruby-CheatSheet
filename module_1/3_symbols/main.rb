require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following passage about Symbols on The Odin Project (cmd+click on link below):
# https://www.theodinproject.com/lessons/ruby-basic-data-types#symbols
# 2. Write code below to make tests pass
# 3. Suggestion: go one method at a time until all tests pass

def compare_two_strings(str1, str2)
  result = str1.object_id == str2.object_id
  return result
  # compare the two strings using their object_id
  # should return false as the two strings are different objects
  # Input: "hello", "hello", Output: false
  # write your code here
end

def compare_two_symbols(sym1, sym2)
  result = sym1.object_id == sym2.object_id
  return result
  # compare the two symbols using their object_id
  # should return true as the two symbols will have the same object_id
  # Input: :hello, :hello, Output: true
  # write your code here
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestStrings < Minitest::Test
  def test_compare_two_strings
    
    refute(compare_two_strings("hello", "hello"))
    refute(compare_two_strings("foo", "foo"))
    refute(compare_two_strings("supercalifragilisticexpialidocious", "supercalifragilisticexpialidocious"))
  end

  def test_compare_two_symbols
    
    assert(compare_two_symbols(:hello, :hello))
    assert(compare_two_symbols(:foo, :foo))
    assert(compare_two_symbols(:supercalifragilisticexpialidocious, :supercalifragilisticexpialidocious))
  end
end
