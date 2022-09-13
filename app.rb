require './book'
require './teacher'
require './student'
require './rental'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    @books.each_with_index { |book, n| print "(#{n}) Title: \"#{book.title}\", Author: \"#{book.author}\"\n" }
  end

  def list_people
    people = [*@teachers, *@students]
    people.each_with_index { |person, i| print "(#{i}) Name: \"#{person.name}\", Age: \"#{person.age}\"\n" }
  end

  def create_rental
    print "Select a book from the following list by number \n"
    list_books
    book = gets.chomp.to_i
    print "select a person \n"
    list_people
    person = gets.chomp.to_i
    print 'select a date'
    date = gets.chomp
    people = [*@teachers, *@students]
    new_rental = Rental.new(date, @books[book], people[person])
    @rentals << new_rental
    puts 'Rental created successfully'
  end

  def list_rentals
    print 'Enter person id'
    id = gets.chomp
    @rentals.each do |i|
      print "Date: #{i.date}, Title: #{i.book.title}, Author: #{i.book.author}\n" if id == i.person.id
    end
  end
end
