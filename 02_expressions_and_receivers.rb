require 'pry'

# What's an expression?
# Everytime ruby needs to evaluate (figure out) what
# something is, that's an expression.
1+1 # 1 expression, which evalautes to 2.
x = 1 # 1 expression, defining the bareword (variable), x.

x+1 
# 2 expressions, in order to evaluate this, ruby first needs
# to find the value of x. Once it does that, it replaces the x
# with the value, 1, and then evaluates the final expression 1+1

book_name = "The Hatchet"
book_name.upcase #=> "THE HATCHET" (2 expressions)
book_name.upcase.reverse #=> "TEHCTAH EHT" (3 expressions)
"The Hatchet".upcase #=> "THE HATCHET" (1 expression)
book_name.object_id == book_name.upcase.object_id #=> false

# When you chain methods together, the object that
# receives the next method call might be a different
# object. Pay attention to the receiver of each method
# call. Whatever expression is to the left of the dot
# is always the receiver. Every expression in Ruby
# returns an object.





Pry.start(binding)