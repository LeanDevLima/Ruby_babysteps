# Create a program that stores a list of names in an array and allows the user to add or remove names from the list.

names = []

def show_names(names)
    puts "List of Names:"
    names.each do |name|
      puts "Name: #{name[:name]}"
    end
  end

loop do
    puts "Menu"
    puts "1 - Create Name"
    puts "2 - Read Names"
    puts "3 - Exit"

    print "Choose an option: "
    choice = gets.to_i

    case choice
    when 1
      name = {}
  
      print "Enter the user name: "
      name[:name] = gets.chomp
 
      names << name
      puts "User name registration created successfully."
  
    when 2
      show_names(names)
    
    when 3
        puts "Leaving the console project."
      break

  else
    puts "Invalid option. Please choose a valid option (1 to 3)."
  end
  
end