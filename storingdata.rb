require 'json'
require_relative 'app'

class StoringData
  def initialize(app)
    @app = app
  end

  def save_people_to_json
    people_file = @app.people.to_json
    filename = 'people.json'
    File.write(filename, "#{people_file}\n", mode: 'a')
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
    rentals_file = @app.rentals.to_json
    filename = 'rentals.json'
    File.write(filename, "#{rentals_file}\n", mode: 'a')
  end
end
