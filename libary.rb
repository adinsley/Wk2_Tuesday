class Library
    attr_reader :name, :books, :people
  def initialize(name)
    @name = name
    @books = {}
    @people = {}
  end 

  def add_book(book)
    @books[book.title] = book
  end  

  def list_books
    if @books.empty?
    else
      book_strings = @books.map do |key, book| 
        book.pretty_string
    end
    book_strings.join("\n")
  end
   end   

   def add_person(person)
      @people[person.name] = person
   end 

   def list_people
      if people.empty?
        "no people here"
      else
        people_strings = @people.map{|key, person| person.pretty_string}
      end  
      people_strings.join("\n")
   end

   def lend(person_name, book_title)
    person = @people[person_name]
    book = @books.delete(book_title)
    person.borrow(book)
   end 

   def return_book(person_name, book_title)
    person = @people[person_name]
    # book = @books[book_title]
    book = person.return(book_title)
    add_book(book)
   end 

   def list_borrowed
    @people.each do |key, person| 
      person.show_on_loan
    end

   end 



end  

