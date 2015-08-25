# my_car2.rb

class Vehicle
  attr_accessor :color, :speed
  attr_reader   :year

  @@total_number_vehicles = 0

  def self.gas_mileage(miles, gallons)
    puts "your car consumes #{miles/gallons} miles per gallon!"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@total_number_vehicles += 1
  end

  def speed_up(number)
    self.speed += number
    puts "accelerate #{number} mph."
  end

  def brake(number)
    self.speed -= number
    puts "decelerate #{number} mph."
  end

  def shut_down
    self.speed = 0
    puts "now the vehicle is shot down!"
  end

  def current_speed
    puts "current speed is #{speed} mph!"
  end

  def year_of_car
    puts "the vehicle is year #{self.year}."
  end

  def color_of_car
    puts "the color of the vehicle is #{self.color}."
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.how_many_vehicles?
    puts "total_number_vehicles is #{@@total_number_vehicles}"
  end
end

class MyCar < Vehicle
  TYPE_OF_VEHICLE = "Car"
  def to_s
    "my car is #{color} #{@model} from #{year}."
  end
end

class MyTruck < Vehicle
  TYPE_OF_VEHICLE = "Truck"
  def to_s
    "my truck is #{color} #{@model} from #{year}."
  end
end

civic = MyCar.new(2000, 'red', 'honda civic')
f150 = MyTruck.new(2010, 'silver', 'F150')

p civic.to_s
p f150.to_s

Vehicle.how_many_vehicles?