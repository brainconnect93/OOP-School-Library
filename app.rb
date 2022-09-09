require './book'
require './teacher'
require './student'
require './rental'

class App
  attr_accessor :books, :teachers, :students, :rentals

    def initialize
      @books = []
      @teachers = []
      @students = []
      @rentals = []
    end

    def list_books
      @books.each_with_index { |book, n| print "(#{n}) Title: \"#{book.title}\", Author: \"#{book.author}\"\n"}
    end

    def list_people
      people = [*@teachers, *@students]
      people.each_with_index { |people, i| print "(#{i}) Name: \"#{people.name}\", Age: \"#{people.age}\"\n"}
    end

    def create_person
      print "Do you want to create a student (1) or a teacher (2)? [input a number]:"
      input = gets.chomp.to_i

     if input == 1
       print "Age:"
       age = gets.chomp.to_i
       print "Name:"
       name = gets.chomp
       print "Enter Classroom:"
       classroom = gets.chomp
       new_student = Student.new(age, classroom)
       new_student.name = name
       @students << new_student
       puts "#{new_student.name} added successfully"

     elsif input == 2
       print "Age:"
       age = gets.chomp.to_i
       print "Name:"
       name = gets.chomp
       print "Specialization:"
       specialization = gets.chomp
       new_teacher = Teacher.new(age, name, specialization)
       @teachers << new_teacher
       puts "#{new_teacher.name} added successfully"
    end
    end

    def create_book
      print "Book Title:"
      title = gets.chomp
      print "Book Author:"
      author = gets.chomp
      new_book = Book.new(title, author)
      @books << new_book
      puts "#{new_book.title} created successfully"
    end

    def create_rental
      print "Select a book from the following list by number"
      list_books
      book = gets.chomp
      print "select a person"
      list_people
      person = gets.chomp
      print "select a date"
      date = gets.chomp
      new_rental = Rental.new(date, book, person)
      @rentals << new_rental
      puts "Rental created successfully"
    end

    def list_rental
      print "Enter person id"
      id = gets.chomp
      for i in @rentals do
        if id == i.person.id
          print "Date: #{i.date}, Title: #{i.book.title}, Author: #{i.book.author}\n"
        end
      end
    end
end
