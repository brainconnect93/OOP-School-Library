require './book'
require './teacher'
require './student'
require './rental'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    books_file = create_json('books')
    @books = books_file ? JSON.parse(books_file.read, create_additions: true) : []
    people_file = create_json('people')
    @people = people_file ? JSON.parse(people_file.read, create_additions: true) : []
    rent_file = create_json('rent')
    @rentals = rent_file ? JSON.parse(rent_file.read, create_additions: true) : []
  end

  def create_json(string)
    File.write("#{string}.json", []) unless File.exist?("#{string}.json")
    File.open("#{string}.json", 'r')
  end

  def list_books
    @books.each_with_index { |book, n| print "(#{n}) Title: \"#{book.title}\", Author: \"#{book.author}\"\n" }
  end

  def list_people
    @people.each_with_index do |person, i|
      puts "(#{i}) Name: \"#{person.name}\", Age: \"#{person.age}\", Id: \"#{person.id}\""
    end
  end

  def list_rentals
    print 'Enter person id: '
    id = gets.chomp.to_i
    @rentals.each do |i|
      print "Date: #{i.date}, Title: #{i.book.title}, Author: #{i.book.author}\n" if id == i.person.id
    end
  end
end
