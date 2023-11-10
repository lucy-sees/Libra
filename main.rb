require './app'

def show_menu
  puts "\nPlease choose an option by entering a number:
  1 - List all books
  2 - List all people
  3 - Create a person
  4 - Create a book
  5 - Create a rental
  6 - List all rentals for a given person id
  7 - Exit"
end

def process_options(usr_inp)
  case usr_inp
  when '1'
    @app.list_all_books
  when '2'
    puts '2'
  when '3'
    puts '3'
  when '4'
    @app.create_book
  when '5'
    puts '5'
  when '6'
    puts '6'
  else
    exit
  end
end

def main
  @app = App.new
  $stdout.clear_screen
  puts 'Welcome to School Library App!'
  loop do
    show_menu
    if user_input == '7'
      puts 'Thank you for using this app!'
      break
    end
    process_options(user_input)
  end
end
main
