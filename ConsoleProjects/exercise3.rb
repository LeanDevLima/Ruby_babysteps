# Implement a program that checks whether a number is even or odd and displays the corresponding message.

print("Give-me a number: ")
number = gets.chomp.to_i

rest = number % 2 == 0

if rest
    puts("This is an even number")
else
    puts("This is an odd number")
end
