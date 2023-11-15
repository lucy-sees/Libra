require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_reader :parent_permission
  attr_accessor :id, :age, :name, :rental

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  def correct_name
    @name
  end
  
  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  private


  def of_age?
    @age && @age >= 18
  end
end
