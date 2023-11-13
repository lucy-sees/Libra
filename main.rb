require './app'

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

  def display_options
    puts
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def execute_option(number)
    case number
    when 1 then list_books
    when 2 then list_persons
    when 3 then create_person_option
    when 4 then create_book_option
    when 5 then create_rental
    when 6 then access_rental
    when 7 then exit_app
    else
      handle_invalid_option
      main_menu
    end
  end

  def handle_invalid_option
    puts 'Invalid option. Please try again'
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
