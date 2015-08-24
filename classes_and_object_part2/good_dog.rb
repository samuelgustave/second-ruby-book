# good_dog.rb

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :height, :weight, :age
  @@number_of_dogs = 0

  
  def initialize(n, h, w, a)
    @name = n
    @height = h
    @weight = w
    @age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name}, weighs #{self.weight}, is #{self.age} year old and is #{self.height} tall."
  end

  def self.what_am_i #class method definition
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    "There are #{@@number_of_dogs} dogs!"
  end

  def to_s
      "This dog's name is #{name} and it is #{age} in dog years."
  end

  def what_is_self
    self    
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs', 4)
# puts sparky.info
# puts GoodDog.what_am_i
# puts GoodDog.total_number_of_dogs

fido = GoodDog.new('Fido', '10 inches', '45 lbs', 8)
# puts fido.info
# puts GoodDog.total_number_of_dogs

# puts sparky
# puts fido

# p sparky
# puts "Hey,  #{sparky}"

p sparky.what_is_self