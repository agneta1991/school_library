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

  def onloading_renatls_data
    file_name = './rental.json'
    file = File.read(file_name)
    data_hash = JSON.parse(file)
    puts data_hash
  end

  def onloading_people_data
    file_name = './people.json'
    file = File.read(file_name)
    data_hash = JSON.parse(file)
    puts data_hash
  end
end
