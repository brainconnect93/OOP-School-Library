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
end

app = App.new

book = Book.new("title", "author")
app.books.push(book)
app.create_book

# teacher = Teacher.new("age", "name", "specialization")
# app.teachers.push(teacher)
# app.create_person

# Afolabi = Student.new(20, "classroom")
# app.students.push(Afolabi)
# app.list_people

# books = Book.new("Home alone", "Afolabi")
# app.books.push(books)
# app.list_books

