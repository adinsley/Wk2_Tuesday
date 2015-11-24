require "pry-byebug"
require_relative './libary' 
require_relative './book'
require_relative './people'



#TODO. 0/Create Libary

library = Library.new 'CodeClan Library'

# 1/Create a book,

book_1 = Book.new({title:"Errand", genre:"Fantasy"})

library.add_book(book_1)
library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))


#2/List a book

# puts "All books: #{library.list_books}"

#3/Create a person

person_1 = Person.new("Jane")

#4/List a person 

library.add_person(person_1)
library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))

# puts "All people #{library.list_people}"

#5/Lend Book
person_name = "Wilma"
person_name2 = "Fred"
book_title1 = "The Hobbit"
book_title2 = "Histories"
book_title3 = "A Brief History of Time"

library.lend(person_name, book_title1)
library.lend(person_name, book_title2)
library.lend(person_name2, book_title3)
# puts "All books: #{library.list_books}"
# puts "All people #{library.list_people}"

#6/Return Book.


# library.return_book(person_name, book_title)

## puts "All people #{library.list_people}"

#7/List the borrowed books.

library.list_borrowed


binding.pry; ''