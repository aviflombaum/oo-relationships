require 'pry'

class Book
  attr_accessor :name
  attr_accessor :author # Intended to reference an Author instance.
end

class Author
  attr_accessor :name
  attr_accessor :books # Intended to reference many Book instanced

  def initialize
    @books = []
  end
  
end

author = Author.new
author.name = "John Steinbeck"

book_1 = Book.new
book_1.name = "Of Mice and Men"
book_1.author = author

book_2 = Book.new
book_2.name = "Old Man and the Sea"
book_2.author = author

author.books = [book_1, book_2]

author.books.collect{|b| b.name} 
#=> ["Of Mice and Men", "Old Man and the Sea"]

Pry.start(binding)