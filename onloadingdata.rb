require_relative 'app'
require 'json'

class OnloadingData
  def initialize(app)
    @app = app
  end

  def onloading_books_data
    file_name = './books.json'
    file = File.read(file_name)
    data_hash = JSON.parse(file)
    data_hash.each do |book|
      puts "Title: \"#{book['title']}\" Author: #{book['author']}"
    end
  end

  def onloading_rentals_data
    file_name = './rental.json'
    file = File.read(file_name)
    data_hash = JSON.parse(file)
    data_hash.each do |rental|
      puts "Date: #{rental['date']} Title: #{rental['title']} by #{rental['author']}"
    end
  end

  def onloading_people_data
    file_name = './people.json'
    file = File.read(file_name)
    data_hash = JSON.parse(file)
    data_hash.each do |person|
      puts "[#{person['type']}] Name: #{person['name']} ID: #{person['id']} Age: #{person['age']}"
    end
  end
end
