# Create a program that stores student information (name, age, average) in a class and allows the user to add new students and view existing details.

puts("============================")
puts("===== School ---- Ruby =====")
puts("============================")

students = []

def show_students(students)
  puts "List of students:"
  students.each_with_index do |student, index|
    total_notes = student[:notes].sum
    average = total_notes / student[:notes].length.to_f
    puts "Index: #{index}, Name: #{student[:name]}, Age: #{student[:age]}, Notes: #{student[:notes].join(', ')}, Average: #{average}"
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
    student = {}

    print "Enter the student name: "
    student[:name] = gets.chomp

    print "Enter the student's age: "
    student[:age] = gets.to_i

    student[:notes] = []

    loop do
      print "Enter a note for the student (or -1 to finish): "
      note = gets.to_i
      break if note == -1
      student[:notes] << note
    end

    students << student
    puts "Student registration created successfully."

  when 2
    show_students(students)

  when 3
    show_students(students)

    print "Enter the index of the student you want to update (the first is 0): "
    index = gets.to_i

    if index >= 0 && index < students.length
      puts "Updating student information ##{index + 1}:"
      print "Enter the student name: "
      students[index][:name] = gets.chomp

      print "Enter the student's age: "
      students[index][:age] = gets.to_i

      students[index][:notes] = []

      loop do
        print "Enter a note for the student (or -1 to finish): "
        note = gets.to_i
        break if note == -1
        students[index][:notes] << note
      end

      puts "Student registration updated successfully."
    else
      puts "Invalid index."
    end

  when 4
    show_students(students)

    print "Enter the index of the student you want to delete: "
    index = gets.to_i

    if index >= 0 && index < students.length
      deleted = students.delete_at(index)
      puts "Student registration ##{index + 1} (#{deleted[:name]}) successfully deleted."
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
