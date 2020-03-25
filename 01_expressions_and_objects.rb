require 'pry'

class Book
    attr_accessor :name, :author_name

end

book_name = "The Hatchet"
puts "Object ID for `book_name`: #{book_name.object_id}"

author_name = "Gary Paulsen"
puts "Object ID for `author_name`: #{author_name.object_id}"

fav_book = Book.new
fav_book.name = book_name
fav_book.author_name = author_name

puts "Object ID for `fav_book.name`: #{fav_book.name.object_id}"
puts "Object ID for `fav_book.author_name`: #{fav_book.author_name.object_id}"

# Comparing the attributes of the Book instance to the
# original variables shows that the objects are the same
# fav_book.name == book_name #=> true
# fav_book.author_name == author_name #=> true

# In the above sense, the Book instance is collaborating
# with the unique String instances.

# Note a difference in objects below.
# name_1 = "Ada Lovelace"
# name_2 = "Ada Lovelace"

# name_1.object_id == name_2.object_id #=> false

# puts name_1.object_id
# puts name_2.object_id





Pry.start(binding)