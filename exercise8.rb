# Develop a program that converts a temperature from Celsius to Fahrenheit (using floating point variables).

puts("=============================")
puts("==-►Temperature Converter◄-==")
puts("=============================")

loop do
  puts("What would you like to do?")
  puts 'Menu'
  puts '1 - Celsius to Fahrenheit'
  puts '2 - Fahrenheit do Celsius'
  puts '0 - Exit'

  print 'Choose an option: '
  choice = gets.to_i

  a = 9.0/5.0
  b = 5.0/9.0

  case choice
  when 1
    puts 'What is the temperature in Celsius?: '
    celsius = gets.to_i

    result = (celsius * a) + 32

    puts "►►The result is #{result}º Fahrenheit"

  when 2
    puts 'What is the temperature in Fahrenheit? '

    fahrenheit = gets.to_i

    result = (fahrenheit - 32) * b

    puts "►►The result is #{result}º Celsius"

  when 0
    puts 'Leaving the console project.'
    break

  else
    puts 'Invalid option. Please choose a valid option (0 to 2).'
  end
end