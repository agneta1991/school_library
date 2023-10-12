require 'rspec'
require './book'

describe Book do
  book = Book.new('Title', 'Author')

  context 'attributes' do
    it 'has a title' do
      expect(book.title).to eq('Title')
    end

    it 'has an author' do
      expect(book.author).to eq('Author')
    end

    it 'id is assigned as default and it is a number' do
      expect(book.id).to be_an(Integer)
    end

    it 'has an empty array of rentals' do
      expect(book.rentals).to eq([])
    end
  end
end
