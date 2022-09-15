require './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom = 'Unknown', name = 'Unknown', rentals = [])
    super(age, name, rentals)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self)
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'arguments' => [age, @classroom, name, rentals]
    }.to_json(*args)
  end

  # Deserialize JSON string by constructing new Foo object with arguments.
  def self.json_create(object)
    new(*object['arguments'])
  end
end
