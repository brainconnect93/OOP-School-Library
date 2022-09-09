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
end