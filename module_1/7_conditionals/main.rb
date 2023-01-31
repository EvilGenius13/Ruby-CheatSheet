require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following passage about Conditionals on The Odin Project (cmd+click on link below):
# https://www.theodinproject.com/lessons/ruby-conditional-logic
# 2. Write code below to make tests pass
# 3. Suggestion: go one method at a time until all tests pass

def can_watch_rated_r_movie?(age)
  if age >= 17
    return "Enjoy the show!"
  else
    return "Sorry, you are not old enough for this movie"
  end
  # Check if user can watch a rated R movie
  # If user is 17 years old or older, return "Enjoy the show!".
  # If the user is under 17 years old, return "Sorry, you are not old enough for this movie".
  # write your code here
end

def values_are_equal?(a, b)
  if a == b
    return true
  else
    return false
  end
  # Check if the two arguments provided are equal
  # Return true or false
  # write your code here
end

def points_to_letter_grade(points)
  if points >= 90
    return "A"
  elsif points >= 80
    return "B"
  elsif points >= 70
    return "C"
  elsif points >= 60
    return "D"
  else
    return "F"
  end
  # Return the correct letter grade for the points given
end
  # A: 90 - 100, B: 80 - 89, C: 70 - 79, D: 60 - 69, F: 59 and below
  # write your code here

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestConditionals < Minitest::Test
  def test_can_watch_rated_r_movie
    
    assert_equal("Enjoy the show!", can_watch_rated_r_movie?(17))
    assert_equal("Sorry, you are not old enough for this movie", can_watch_rated_r_movie?(10))
  end

  def test_values_are_equal
    
    assert(values_are_equal?(1, 1))
    assert(values_are_equal?("hello", "hello"))
    refute(values_are_equal?(1, 2))
    refute(values_are_equal?("hello", "world"))
  end

  def test_points_to_letter_grade
    
    (90..100).to_a.each { |i|  assert_equal("A", points_to_letter_grade(i)) }
    (80..89).to_a.each { |i|  assert_equal("B", points_to_letter_grade(i)) }
    (70..79).to_a.each { |i|  assert_equal("C", points_to_letter_grade(i)) }
    (60..69).to_a.each { |i|  assert_equal("D", points_to_letter_grade(i)) }
    (1..59).to_a.each { |i|  assert_equal("F", points_to_letter_grade(i)) }
  end
end
