puts("============================")
puts("= Library - Challenge - Ruby =")
puts("============================")

users = []

def show_users(users)
  puts "List of Users:"
  users.each do |user|
    puts "Name: #{user[:name]}, Age: #{user[:age]}, Card Number: #{user[:card_number]}"
  end
end

loop do
  puts "Menu"
  puts "1 - Create Register"
  puts "2 - Read Registers"
  puts "3 - Update Register"
  puts "4 - Delete Register"
  puts "5 - Exit"

  print "Choose an option: "
  choice = gets.to_i

  case choice
  when 1
    user = {}

    print "Enter the user name: "
    user[:name] = gets.chomp

    print "Enter the user's age: "
    user[:age] = gets.to_i

    print "Enter the user's card number: "
    user[:card_number] = gets.chomp

    users << user
    puts "User registration created successfully."

  when 2
    show_users(users)

  when 3
    show_users(users)

    print "Enter the index of the user you want to update: "
    index = gets.to_i

    if index >= 0 && index < users.length
      puts "Updating user information ##{index + 1}:"
      print "Enter the user name: "
      users[index][:name] = gets.chomp

      print "Enter the user's age: "
      users[index][:age] = gets.to_i

      print "Enter the user's card number: "
      users[index][:card_number] = gets.chomp

      puts "User registration updated successfully."
    else
      puts "Invalid index."
    end

  when 4
    show_users(users)

    print "Enter the index of the user you want to delete: "
    index = gets.to_i

    if index >= 0 && index < users.length
      deleted = users.delete_at(index)
      puts "User registration ##{index + 1} (#{deleted[:name]}) successfully deleted."
    else
      puts "Invalid index."
    end

  when 5
    puts "Leaving the console project."
    break

  else
    puts "Invalid option. Please choose a valid option (1 to 5)."
  end
end
