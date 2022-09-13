class CreatePerson
  def initialize(people)
    @people = people
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [input a number]:'
    input = gets.chomp.to_i

    case input
    when 1
      print 'Age:'
      age = gets.chomp.to_i
      print 'Name:'
      name = gets.chomp
      print 'Enter Classroom:'
      classroom = gets.chomp
      new_student = Student.new(age, classroom)
      new_student.name = name
      @people.push(new_student)
      puts "#{new_student.name} added successfully"

    when 2
      print 'Age:'
      age = gets.chomp.to_i
      print 'Name:'
      name = gets.chomp
      print 'Specialization:'
      specialization = gets.chomp
      new_teacher = Teacher.new(age, name, specialization)
      @people.push(new_teacher)
      puts "#{new_teacher.name} added successfully"

    when 3
      nil
    else
      puts 'Invalid input option'
      create_person
    end
  end
end
