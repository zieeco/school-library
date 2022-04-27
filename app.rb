require './person'
require './teacher'
require './book'
require './student'
require './classroom'
require './rental'
require 'json'
require './data/read_write'

class App
  def initialize
    super
    @books = []
    @persons = []
    @rentals = []
  end
end
