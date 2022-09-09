require './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom = 'Unknown')
    super(age)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self)
  end
end
