require 'pry'

class Author
  attr_accessor :name, :books

  def initialize
    @books = []
  end
end

class Book
  attr_accessor :name
  attr_accessor :author
end

book = Book.new
book.author = "Hemmingway"

begin
  book.author.name #=> "Error"
rescue => e 
  puts e.inspect
  #<NoMethodError: undefined method `name' for "Hemmingway":String>
end

author = Author.new
book.author = author # This author now has a book.

author.books #=> [] ?

Pry.start(binding)

class Book
  attr_accessor :name, :author

  def author=(author)
    @author = author # Maintain accessor functionality.
    # Reciprocate relationship, preventing duplicates
    author.books << self unless author.books.include?(self)
  end
end

author = Author.new
book.author = author # This author now has a book.
author.books #=> [#<Book>] 

Pry.start(binding)