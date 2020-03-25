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
  attr_accessor :name, :books

  def initialize
    @books = []
  end
end

book = Book.new
author = Author.new
author.books << book
book.author #=> nil ?

Pry.start(binding)

class Author
  
  # Maybe?
  def <<(book)
    @books << book
    book.author = self
  end

end

book = Book.new
author = Author.new
author.books << book
book.author #=> nil ?

Pry.start(binding)

# Our Own Interface

class Author
  
  def add_book(book)
    @books << book
    book.author = self
  end

end

book = Book.new
author = Author.new
author.add_book(book)
book.author #=> #<Author>

Pry.start(binding)
