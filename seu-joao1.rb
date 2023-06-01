# Mr. João is a merchant and he needs a software that calculates the discount percentage he will 
# give to his customers on the total purchase amount. Create a software that asks for the total 
# order value, asks for the percentage, and then displays the discounted value and the amount discounted.
# If the discounted total value is less than 10, offer an additional item in the order worth 15.

system 'cls'

puts "Hello, what is the product that the customer took?"
produto = gets.to_s

puts "What is the order value??"
valorpedido = gets.to_f


puts "What is the % discount?"
desconto = gets.to_f

descontado = valorpedido * (desconto/100)
valortotal = valorpedido - descontado

preco = 0
if valortotal < 10
    puts "The total amount is less than 10, would you like to add any items? (Y/N)"
    decisao = gets
        if decisao.to_s.upcase.strip == "Y"
            preco += 15
        end    
end

puts "================================================="
puts "|Product's name                       | #{produto} |" 
puts "-------------------------------------------------"
puts "|Price of the product                 | #{valorpedido} |" 
puts "-------------------------------------------------"
if preco > 0
    puts "================================================="
    puts "A product worth 15 has been added"
    puts "================================================="
    puts "|Final value                          | #{valorpedido + preco} |"
    end

valorfinal = valortotal + preco * (desconto/100)

puts "-------------------------------------------------"
puts "|Total discount amount                | #{descontado*10} % |"
puts "-------------------------------------------------"
puts "|Total amount payable (with discount) | #{valorfinal} |" 
puts "================================================="


