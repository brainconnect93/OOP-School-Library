require './book'
require './teacher'
require './student'
require './rental'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    books_file = File.open('books.json', 'r')
    @books = books_file ? JSON.parse(books_file.read) : []
    people_file = File.open('people.json', 'r')
    @people = people_file ? JSON.parse(people_file.read) : []
    @rentals = []
  end

  def list_books
    @books.each_with_index { |book, n| print "(#{n}) Title: \"#{book['Title']}\", Author: \"#{book['Author']}\"\n" }
  end

  def list_people
    @people.each_with_index do |person, i|
      puts "(#{i}) Name: \"#{person['Name']}\", Age: \"#{person['Age']}\", Id: \"#{person['Id']}\""
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
