# my_car.rb

class MyCar

  attr_accessor :color, :speed
  attr_reader   :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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
    puts "now the car is shot down!"
  end

  def current_speed
    puts "current speed is #{speed} mph!"
  end

  def year_of_car
    puts "the car is year #{self.year}."
  end

  def color_of_car
    puts "the color of the car is #{self.color}."
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(miles, gallons)
    puts "your car consumes #{miles/gallons} miles per gallon!"
  end

  def to_s
    "#{color} #{@model} from #{year}."
  end
end

civic = MyCar.new(2000, 'red', 'honda civic')

puts civic
MyCar.gas_mileage(250,11)