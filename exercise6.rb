# Develop a program that simulates a calculator with addition, subtraction, multiplication and division operations.

  loop do
    puts("What would you like to do?")
    puts 'Menu'
    puts '1 - Sum'
    puts '2 - Subtraction'
    puts '3 - Multiplication'
    puts '4 - Division'
    puts '5 - Exit'
  
    print 'Choose an option: '
    choice = gets.to_i

    case choice
    when 1
      puts 'Enter the first number: '
      number1 = gets.to_i

      puts 'Enter the second number: '
      number2 = gets.to_i

      result = number1 + number2

      puts "The result is #{result}"

    when 2
      puts 'Enter the first number: '
      number1 = gets.to_i

      puts 'Enter the second number: '
      number2 = gets.to_i

      result = number1 - number2

      puts "The result is #{result}"
    
    when 3
      puts 'Enter the first number: '
      number1 = gets.to_i

      puts 'Enter the second number: '
      number2 = gets.to_i

      result = number1 * number2

      puts "The result is #{result}"

    when 4
      puts 'Enter the first number: '
      number1 = gets.to_i

      puts 'Enter the second number: '
      number2 = gets.to_i

      result = number1 / number2

      puts "The result is #{result}"
    
    when 5
      puts 'Leaving the console project.'
      break
  
    else
      puts 'Invalid option. Please choose a valid option (1 to 5).'
    end
  end

