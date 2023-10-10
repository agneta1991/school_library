require 'json'
require_relative 'app'

class StoringData
  def initialize(app)
    @app = app
  end

  def save_people_to_json
    people = @app.people.map do |person|
      {
        type: person.class.name,
        name: person.name,
        ID: person.id,
        age: person.age,
      }
    end

    filename = 'people.json'
    File.open(filename, 'a') do |file|
      file.puts(JSON.generate(people))
    end
  end

  def save_books_to_json
    books = @app.books.map do |book|
      {
        title: book.title,
        author: book.author
      }
    end

    filename = 'books.json'
    File.open(filename, 'a') do |file|
      file.puts(JSON.generate(books))
    end
  end

  def save_rentals_to_json
    rentals = @app.rentals.map do |rental|
      {
        date: rental.date,
        title: rental.book.title,
        author: rental.book.author,
      }
    end

    filename = 'rentals.json'
    File.open(filename, 'a') do |file|
      file.puts(JSON.generate(rentals))
    end
  end
end
