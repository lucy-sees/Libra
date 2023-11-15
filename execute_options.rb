require './app'

def execute_option(number)
  option_mapping = {
    1 => :list_books,
    2 => :list_persons,
    3 => :create_person_option,
    4 => :create_book_option,
    5 => :create_rental,
    6 => :access_rental,
    7 => :exit_app
  }

  selected_option = option_mapping[number]

  if selected_option
    send(selected_option)
  else
    handle_invalid_option
    main_menu
  end
end

def handle_invalid_option
  puts 'Invalid option. Please try again'
end
