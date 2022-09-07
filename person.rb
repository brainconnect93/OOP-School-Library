class Nameable
    def correct_name
      raise NotImplementedError
    end
end

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unkonwn', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_service
    @parent_permission || @age >= 18
  end

  private

  def of_age
    @age >= 18
  end
end
