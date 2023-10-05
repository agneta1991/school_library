require_relative 'book'

class Rental
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.add_rental(self)
    person.add_rental(self)
  end

  attr_accessor :date, :book, :person
end
