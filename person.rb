class Person
    def initialize(age, name = "Unkonwn", parent_permission = true)
      @id = Random.rand(1..1000)
      @name = name
      @age = age
      @parent_permission = parent_permission
    end
    attr_accessor :name, :age
    attr_reader :id

    private

    def is_of_age
      if @age >= 18
        true
      else
        false
      end
    end

    def can_use_service
      @parent_permission || @age >= 18
    end
end