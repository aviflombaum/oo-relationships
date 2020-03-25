require 'pry'

class Book
  attr_accessor :name, :author

  def author=(author)
    if author.class == Author
      @author = author
      author.books << self unless author.books.include?(self)
    else
      raise ArgumentError.new("Received #{author.class}, must be an Author.") 
    end
  end
end

class Author
  attr_accessor :name
  attr_reader :books

  def initialize
    @books = []
  end

  def add_book(book)
    if book.class == Book
      @books << book
      book.author = self unless book.author
    else
      raise ArgumentError.new("Received #{book.class}, must be an Book.")
    end 
  end

end

author = Author.new
begin
  author.add_book("Old Man in the See")
rescue => e
  Pry.start(binding)
end
