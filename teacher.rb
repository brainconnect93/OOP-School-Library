require './person'

class Teacher < Person
  def initialize(age, name, specialization, id = Random.rand(1..1000))
    super(age, name, id)
    @specialization = specialization
  end

  def can_use_service
    true
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'arguments' => [age, name, @specialization, id]
    }.to_json(*args)
  end

  # Deserialize JSON string by constructing new Foo object with arguments.
  def self.json_create(object)
    new(*object['arguments'])
  end
end
