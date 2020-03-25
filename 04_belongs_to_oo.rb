require 'pry'

class Book
  attr_accessor :name
  attr_accessor :author # Intended to reference an Author instance.
end

class Author
  attr_accessor :name
end

author = Author.new
author.name = "John Steinbeck"

book = Book.new
book.name = "Of Mice and Men"
book.author = author

book.author.name #=> "John Steinbeck"

# The Author belongs to the book because the book references
# a single author instance via the @author Book instance 
# variable.

# Pry.start(binding
new_book = Book.new
new_book.name = "Learning Ruby"
new_book.author = "Avi Flombaum"

library = [book, new_book]

library.each do |book|
  puts "#{book.name} by, #{book.author.name}"
end

