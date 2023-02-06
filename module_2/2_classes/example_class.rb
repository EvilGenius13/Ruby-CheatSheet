# EXAMPLE CLASS IN RUBY

# class name must be Uppercase
class User
  # use attr_accessor for attributes that should be available outside the class
  # there's also attr_reader (read-only) and attr_writer(write only)
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  # custom method in class
  def info
    puts "My name is #{@name} and my email is #{@email}"
  end

  # class-level method
  def self.hello
    puts "hello from a class-level method"
  end
end

# creating a new object for the class User
user = User.new("Tom Nook", "tom@nook.com")

# accessing attributes
puts user.name
puts user.email

# calling methods
user.info

# calling class-level methods
User.hello
