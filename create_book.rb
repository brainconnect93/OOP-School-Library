require 'json'

class CreateBook
  def initialize(book)
    @books = book
  end

  def create_book
    title, author = collect_book
    new_book = Book.new(title, author)
    add_to_collection(new_book)
  end

  private

  def collect_book
    print 'Book Title:'
    title = gets.chomp
    print 'Book Author:'
    author = gets.chomp
    [title, author]
  end

  def add_to_collection(new_book)
    @books.push(new_book)
    book_new = { Author: new_book.author, Title: new_book.title }
    @books.push(book_new)
    puts "#{new_book.title} created successfully"
    File.open('books.json', 'w+') do |file|
      books = JSON.dump(@books)
      file.write(books)
    end
  end
end
