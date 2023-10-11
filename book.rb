class Book
  attr_accessor :title, :author, :rentals
  attr_reader :id

  def initialize(title, author, id: nil)
    @title = title
    @author = author
    @id = id || Random.rand(1...100)
    @rentals = []
  end
end
