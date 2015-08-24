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
end

civic = MyCar.new(2000, 'red', 'honda civic')
civic.year_of_car
civic.color_of_car
civic.spray_paint('blue')
civic.color_of_car

civic.speed_up(30)
civic.current_speed

civic.brake(20)
civic.current_speed

civic.shut_down
civic.current_speed