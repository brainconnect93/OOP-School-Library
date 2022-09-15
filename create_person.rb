require 'json'

class CreatePerson
  def initialize(people)
    @people = people
  end

  def create_person
    input = collect_input
    case input
    when 1
      new_student = create_student
      add_to_collection(new_student)

    when 2
      new_teacher = create_teacher
      add_to_collection(new_teacher)

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

  def add_to_collection(person)
    new_person = {
      Name: person.name,
      Age: person.age,
      Id: person.id
    }
    @people.push(new_person)
    puts "#{person.name} added successfully"
    File.open('people.json', 'w+') do |file|
      people = JSON.dump(@people)
      file.write(people)
    end
  end
end
