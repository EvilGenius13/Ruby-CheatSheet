require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following passage about Strings on The Odin Project (cmd+click on link below):
# https://www.theodinproject.com/lessons/ruby-basic-data-types#strings
# 2. Write code below to make tests pass
# 3. Suggestion: go one method at a time until all tests pass

def say_hello_name(name)
  message = "Hello, #{name}"
  return message
  # Input: "Tobi", Output: "Hello, Tobi"
  # write your code here
end

def return_the_first_character_of_string(str)
  message = str[0]
  return message
  # Input: "Hello", Output: "H"
  # write your code here
end

def return_last_character_of_string(str)
  message = str[-1]
  return message
  # Input: "Hello", Output: "o"
  # write your code here
end

def capitalize_string(str)
  message = str.capitalize
  return message
  # Input: "hello", Output: "Hello"
  # write your code here
end

def all_caps(str)
  message = str.upcase
  return message
  # Input: "hello", Output: "HELLO"
  # write your code here
end

def all_lower(str)
  message = str.downcase
  return message
  # Input: "HELLO", Output: "hello"
  # write your code here
end

def return_length_of_string(str)
  message = str.length
  return message
  # Input: "HELLO", Output: 5
  # write your code here
end

def is_empty_string(str)
  message = str.empty?
  return message
  # Input: "", Output: true
  # write your code here
end

def split_phrase_into_array(phrase)
  message = phrase.split
  return message
  # Input: "Hello world", Output: ["Hello", "world"]
  # write your code here
end

def coerce_into_string(value)
  message = value.to_s
  return message
  # Input: 1, Output: "1"
  # write your code here
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestStrings < Minitest::Test
  def test_say_hello_name
    
    assert_equal("Hello, Tobi", say_hello_name("Tobi"))
  end
  
  def test_return_the_first_character_of_string
    
    assert_equal("H", return_the_first_character_of_string("Hello"))
    assert_equal("g", return_the_first_character_of_string("garlicbread"))
  end
  
  def test_return_last_character_of_string
    
    assert_equal("o", return_last_character_of_string("Hello"))
    assert_equal("d", return_last_character_of_string("garlicbread"))
  end
  
  def test_capitalize_string
    
    assert_equal("Hello", capitalize_string("hello"))
    assert_equal("Garlicbread", capitalize_string("garlicbread"))
  end
  
  def test_all_caps
  
    assert_equal("HELLO", all_caps("hello"))
    assert_equal("GARLICBREAD", all_caps("garlicbread"))
  end
  
  def test_all_lower
    
    assert_equal("hello", all_lower("HELLO"))
    assert_equal("garlicbread", all_lower("GARLICBREAD"))
  end
  
  def test_return_length_of_string
    
    assert_equal(5, return_length_of_string("hello"))
    assert_equal(2, return_length_of_string("hi"))
    assert_equal(34, return_length_of_string("supercalifragilisticexpialidocious"))
  end
  
  def test_is_empty_string
    
    assert_equal(true, is_empty_string(""))
    assert_equal(false, is_empty_string("hello"))
  end
  
  def test_split_phrase_into_array
    
    assert_equal(["Hello", "world"], split_phrase_into_array("Hello world"))
    assert_equal(["Ruby", "is", "awesome"], split_phrase_into_array("Ruby is awesome"))
  end

  def test_coerce_into_string
    
    assert_equal("1", coerce_into_string(1))
    assert_equal("true", coerce_into_string(true))
    assert_equal("sym", coerce_into_string(:sym))
  end
end
