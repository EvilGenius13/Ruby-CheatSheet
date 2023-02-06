require "minitest/autorun"

# INSTRUCTIONS
# 1. Read the following blog post about Classes in Ruby (cmd + click on link):
# https://www.eriktrautman.com/posts/ruby-explained-classes
# 2. Create a class below according to the following specifications:
#    a. class must have an initialize method
#    b. initialize method must take name, breed, color, age as arguments in that order
#    c. name and age properties should be accessible to read and write
#    d. breed and color should be read-only
#    e. class should have a bark method that outputs "BARK!"
#    d. class must have a class-level factory method called "create" that creates a new Dog with random values
# 3. Add code to make tests pass

class Dog
  # write your code here
  attr_accessor :name, :age
  attr_reader :breed, :color
  def initialize(name, breed, color, age)
    @name = name
    @breed = breed
    @color = color
    @age = age
  end

  def bark
    return "BARK!"
  end

  def self.create
    names = ["Gadget", "Fido", "Snoopy"]
    breeds = ["Poodle", "Labrador", "Pug"]
    colors = ["Black", "White", "Brown"]
    Dog.new(names.sample, breeds.sample, colors.sample, rand(10))
  end
end

# DO NOT MODIFY THE TESTS BELOW
# Delete the "skip" from the test you want to run
# To run the test run `ruby main.rb` in your command line
class TestDog < Minitest::Test
  def setup
    @dog = Dog.new("Milo", "corgi", "brown", 7)
  end
 
  def test_dog_creates_new_object
    
    assert(Dog.new("Test", "test", "test", 1))
  end

  def test_dog_name_can_be_read
    
    assert_equal("Milo", @dog.name)
  end

  def test_dog_name_can_be_written
    
    @dog.name = "New Name"
    assert_equal("New Name", @dog.name)
  end

  def test_dog_age_can_be_read
    
    assert_equal(7, @dog.age)
  end

  def test_dog_age_can_be_written
    
    @dog.age = 5
    assert_equal(5, @dog.age)
  end

  def test_dog_breed_can_be_read
    
    assert_equal("corgi", @dog.breed)
  end

  def test_dog_breed_cannot_be_written
    
    assert_raises do
      @dog.breed = "Dalmatian"
    end
  end

  def test_dog_color_can_be_read
    
    assert_equal("brown", @dog.color)
  end

  def test_dog_color_cannot_be_written
    
    assert_raises do
      @dog.color = "red"
    end
  end

  def test_dog_bark_method_outputs_bark
    
    out, _err = capture_io do 
      @dog.bark
    end
    assert_includes("BARK!", out)
  end

  def test_dog_factory_creates_new_dog
    
    dog = Dog.create
    assert_equal(Dog, dog.class)
    assert(dog.name)
    assert(dog.breed)
    assert(dog.color)
    assert(dog.age)
  end
end
