# ex3.rb

# the error is because we did not use attr_accessor or attr_writer 
# for the instance variable @name

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"