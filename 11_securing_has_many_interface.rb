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

  def add_book(book)
    if book.class == Book
      @books << book
      book.author = self unless book.author
    else
      raise ArgumentError.new("Received #{book.class}, must be an Book.")
    end 
  end

end

book = Book.new
author = Author.new

author.books << book

book.author #=> nil

Pry.start(binding)

class Author
  attr_accessor :name

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

  def books
    @books.clone.freeze
  end

end

book = Book.new
author = Author.new

begin
  author.books << book
rescue => e
  Pry.start(binding)
end

