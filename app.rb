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
    # people = [*@teachers, *@students]
    @people.each_with_index do |person, i|
      puts "(#{i}) #{person.is_a?(Student) ? '[Student]' : '[Teacher]'} Name: \"#{person.name}\", Age: \"#{person.age}"
    end
  end

  def list_rentals
    print 'Enter person id'
    id = gets.chomp
    @rentals.each do |i|
      print "Date: #{i.date}, Title: #{i.book.title}, Author: #{i.book.author}\n" if id == i.person.id
    end
  end
end
