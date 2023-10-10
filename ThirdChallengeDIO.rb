puts("=============================")
puts("-Potentiation-Challenge-Ruby◄-")
puts("=============================")

numbers = []

3.times do |i|
  print("Enter the #{i + 1}th number: ")
  number = gets.chomp.to_f
  numbers << number
end

results = numbers.map { |number| number**3 }

puts "The results of numbers raised to the third power are: "
results.each_with_index do |result, index|
  puts "Number #{numbers[index]} raised to the 3rd power is equal to #{result}"
end