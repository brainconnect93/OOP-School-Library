require './person'

class Student < Person
  def initialize(classroom = 'Unknown')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
