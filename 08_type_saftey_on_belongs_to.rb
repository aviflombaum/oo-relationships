require 'pry'

class Author
  attr_accessor :name, :books

  def initialize
    @books = []
  end
end

class Book
  attr_accessor :name, :author

  def author=(author)
    if author.class == Author
      @author = author
      author.books << self unless author.books.include?(self)
    else
      raise TypeError.new("Received #{author.class}, must be an Author.") 
    end
  end
end

begin
  book = Book.new
  book.author = "Hemmingway"
rescue => e
  Pry.start(binding)
end