class CreateBook
  def initialize(book)
    @books = book
  end

  def create_book
    print 'Book Title:'
    title = gets.chomp
    print 'Book Author:'
    author = gets.chomp
    new_book = Book.new(title, author)
    @books.push(new_book)
    puts "#{new_book.title} created successfully"
  end
end
