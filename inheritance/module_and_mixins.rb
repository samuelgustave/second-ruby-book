# module_and_mixins.rb

module Swimmable
  def swim
    puts "I'm swimming!"
  end
end

class Animal
end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable         # Mixing in Swimmable module
end

sparky = Dog.new
neemo = Fish.new
paws = Cat.new

sparky.swim
neemo.swim
paws.swim                 # module_and_mixins.rb:32:in `<main>': undefined method `swim' for #<Cat:0x007fdb8c025fc0> (NoMethodError)