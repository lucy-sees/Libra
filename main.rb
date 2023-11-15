require './app'
require './display_options'
require './execute_options'

class LibraryApp
  def initialize
    @app = App.new
  end

  def run
    puts 'Welcome to School Library App!'
    main_menu
  end

  private

  def main_menu
    display_options
    number = gets.chomp.to_i
    execute_option(number)
  end

  def exit_app
    puts 'Thank you for using this App'
  end

  def create_person_option
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_code = gets.chomp.to_i
    @app.create_person(person_code)
    main_menu
  end

  def create_book_option
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @app.create_book(title, author)
    main_menu
  end

  def access_rental
    print 'ID of person: '
    id = gets.chomp.to_i
    @app.get_rental(id)
    main_menu
  end

  def list_books
    @app.list_books
    main_menu
  end

  def list_persons
    @app.list_persons
    main_menu
  end

  def create_rental
    @app.create_rental
    main_menu
  end
end

LibraryApp.new.run
