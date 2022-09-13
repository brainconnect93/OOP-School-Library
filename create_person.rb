class CreatePerson
  def initialize(people)
    @people = people
  end

  def create_person
    input = collect_input
    case input
    when 1
      new_student = create_student
      @people.push(new_student)
      puts "#{new_student.name} added successfully"

    when 2
      new_teacher = create_teacher
      @people.push(new_teacher)
      puts "#{new_teacher.name} added successfully"

    else
      puts 'Invalid input option'
      create_person
    end
  end

  private

  def collect_input
    print 'Do you want to create a student (1) or a teacher (2)? [input a number]:'
    gets.chomp.to_i
  end

  def age_name
    print 'Age:'
    age = gets.chomp.to_i
    print 'Name:'
    name = gets.chomp

    [age, name]
  end

  def collect_specialization
    print 'Specialization:'
    gets.chomp
  end

  def class_get
    print 'Enter Classroom:'
    gets.chomp
  end

  def create_student
    age, name = age_name
    classroom = class_get
    Student.new(age, classroom, name)
  end

  def create_teacher
    age, name = age_name
    specialization = collect_specialization
    Teacher.new(age, name, specialization)
  end
end
