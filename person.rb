class Nameable
    def correct_name
      raise NotImplementedError
    end
end

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def correct_name
    @name
  end

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

class BaseDecorator < Nameable
    attr_accessor :nameable
    def initialize(nameable)
      super()
      @nameable = nameable
    end

    def correct_name
      @nameable.correct_name
    end
end

class CapitalDecorator < BaseDecorator
    def correct_name
      @nameable.correct_name.capitalize
    end
end
