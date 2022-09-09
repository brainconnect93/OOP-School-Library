require './app'

def options
  print "\nPlease choose an option by entering a number \n\n"
  print "1 - List all books \n"
  print "2 - List all people \n"
  print "3 - Create a person (teacher or student) \n"
  print "4 - Create a book \n"
  print "5 - Create a rental \n"
  print "6 - List all rentals for a person \n"
  print "7 - Quit \n"
  gets.chomp.to_i
end

def functional(app)
  user_input = options
  case user_input
  when 1
    app.list_books
    functional(app)
  when 2
    app.list_people
    functional(app)
  when 3
    app.create_person
    functional(app)
  when 4
    app.create_book
    functional(app)
  when 5
    app.create_rental
    functional(app)
  when 6
    app.list_rentals
    functional(app)
  end
end

def main
  app = App.new
  functional(app)
end

main
