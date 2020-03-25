require 'pry'

class Book
  attr_accessor :name, :author
end

class Author
  attr_accessor :name
end

author = Author.new
author.name = "Gary Paulsen"

favorite_book = Book.new
favorite_book.name = "The Hatchet"
favorite_book.author = author
favorite_book.author.object_id #=> 70345143061980
favorite_book.author.name #=> "Gary Paulsen"
favorite_book.author.name.object_id #=> 70217099923520

favorite_book #=> #<Book:0x00007ff502128b40 @name="The Hatchet", 
# => @author=#<Author:0x00007ff502871bb8 @name="Gary Paulsen">>





Pry.start(binding)