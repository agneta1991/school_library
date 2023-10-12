require './rental'
require './book'
require './person'
require 'rspec'

describe Rental do
  let(:date) { '2023-08-25' }
  let(:book) { Book.new('Testing title', 'Testing Author') }
  let(:person) { Person.new(25, 'John Doe') }
  let(:rental) { Rental.new(date, book, person) }

  describe '#initialize' do
    it 'creates a new Rental instance with date, book, and person' do
      expect(rental.date).to eq(date)
      expect(rental.book).to eq(book)
      expect(rental.person).to eq(person)
    end

    it 'adds the rental to the book\'s rentals' do
      expect(book.rentals).to include(rental)
    end

    it 'adds the rental to the person\'s rentals' do
      expect(person.rentals).to include(rental)
    end
  end

  describe 'accessors' do
    it 'allows reading and writing the date attribute' do
      new_date = '2023-08-26'
      rental.date = new_date
      expect(rental.date).to eq(new_date)
    end

    it 'allows reading the book attribute' do
      expect(rental.book).to eq(book)
    end

    it 'allows reading the person attribute' do
      expect(rental.person).to eq(person)
    end
  end
end
