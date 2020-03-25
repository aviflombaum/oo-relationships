require 'pry'

class Book
  attr_accessor :name
  attr_accessor :author
end

class Author
  attr_accessor :name, :books

  def initialize
    @books = []
  end
end

author = Author.new
author.name = "John Steinbeck"

book_1 = Book.new
book_1.name = "Of Mice and Men"
book_1.author = author
author.books << book_1

book_2 = Book.new
book_2.name = "Old Man and the Sea"
book_2.author = author
author.books << book_2

Pry.start(binding)

# Challenge 

class Review
  attr_accessor :text
end

class Book
  attr_accessor :reviews
end

r = Review.new
r.text = "Great"
b = Book.new

Pry.start(binding)

# b.reviews << r

