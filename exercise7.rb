# Implement a guessing game, where the program generates a random number and the user tries to guess the number.

min_value = 1
max_value = 5
random_number = rand(max_value - min_value + 1) + min_value

puts "Try to guess which number is from #{min_value} to #{max_value}"
puts "========================================="
puts "Choose a number: "

number = gets.to_i

if number == random_number
    puts "You got it right, CONGRATULATIONS!!!"
    puts "Your number #{number}"
    puts "Randon Number #{random_number}"
else
    puts "This is not the right number, try again."
    puts "Your number #{number}"
    puts "Randon Number #{random_number}"
end
