# ex2.rb

# What is a module? 
# a module is the same thing than a class except it is not instanciable 
# i.e. we cannot create object of a Module. 
# What is its purpose? 
# The purpose of a module is to permit polymorphism, so a class can inherit
# from various modules via mixins.
# How do we use them with our classes?
# using the keyword "include" inside class definition, we can access the modules's methods.

module MyModule
  def say(word)
    puts word
  end
end

class MyClass
  include MyModule
end

# to create an object put name of class and call 'new' method
obj_instance = MyClass.new
obj_instance.say('hi') # the say method is not implemented in the class but we can use it.