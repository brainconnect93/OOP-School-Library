require './rental'

class CreateRental
  def initialize(rent)
    @rentals = rent
  end

  def create_rental(app)
    print "Select a book from the following list by number \n"
    app.list_books
    book = gets.chomp.to_i
    print "select a person \n"
    app.list_people
    person = gets.chomp.to_i
    print 'select a date'
    date = gets.chomp
    new_rental = Rental.new(date, app.books[book], app.people[person])
    @rentals << new_rental
    puts 'Rental created successfully'
  end
end
