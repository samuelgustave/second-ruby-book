# ex7.rb

class Student
  attr_accessor :name
  attr_writer   :grade

  def initialize(name, grade)
    self.name = name
    @grade = grade
  end

  
  def better_grade_than?(other_student)
      self.grade > other_student.grade ? true : false
  end

  protected
    def grade
      @grade
    end
end

joe = Student.new('Joe', 98)
bob = Student.new('Bob', 80)

puts "Well done!" if joe.better_grade_than?(bob)