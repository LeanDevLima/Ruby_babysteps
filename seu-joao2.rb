
## Part 1
# Mr. João is a merchant and he needs a software that calculates the discount percentage he will 
# give to his customers on the total purchase amount. Create a software that asks for the total 
# order value, asks for the percentage, and then displays the discounted value and the amount discounted.
# If the discounted total value is less than 10, offer an additional item.

## Part 2
# Change the system to ask which product the customer took and the total value of that item.
# If the discounted total value is less than 10, offer an additional product in the order.
# Ask for the name of that product and its value.
# The discount of x% will be applied to the total value of the items.
# If the customer wants to add more items, display the list of items with their respective prices.
# Display the sum of the prices of all items.
# Allow the user to input as many items as they want.


system 'cls'

puts "Hello Joao, in this system you can add items and apply discounts. Enter the name of the product and press enter, then enter the value of that same product, and press enter again. When you finish, press 0 and enter again."

def calcular_desconto(itens)
    puts "Enter the discount percentage:"
    percentual_desconto = gets.chomp.to_f
  
    valor_total = 0
    itens.each do |item|
      valor_total += item[:valor]
    end
  
    valor_desconto = valor_total * percentual_desconto / 100
    valor_com_desconto = valor_total - valor_desconto
  
    puts "Discounted value: $ #{valor_com_desconto.round(2)}"
    puts "Discounted amount: $ #{valor_desconto.round(2)}"
  
    if valor_desconto < 10
      puts "The discounted amount is less than R$ 10."
      puts "Do you want to add an extra item? (Y/N)"
      resposta = gets.chomp.upcase
  
      if resposta == "Y"
        puts "Enter the name of the extra item:"
        nome_item_extra = gets.chomp
        puts "Enter the value of the extra item:"
        valor_item_extra = gets.chomp.to_f
  
        valor_com_desconto += valor_item_extra
        puts "Discounted value with extra item: $ #{valor_com_desconto.round(2)}"
      end
    end
  
    puts "List of items in the order:"
    itens.each do |item|
      puts "#{item[:nome]}: $ #{item[:valor].round(2)}"
    end
  
    soma_precos = valor_total
    soma_precos += valor_item_extra if resposta == "Y"
    puts "Sum of prices of items without discount: $ #{soma_precos.round(2)}"
  end
  
  itens = []
  loop do
    puts "Enter the name of the product (or '0' to finish):"
    nome_produto = gets.chomp
  
    break if nome_produto.downcase == "0"
  
    puts "Enter the value of the product:"
    valor_produto = gets.chomp.to_f
  
    item = { nome: nome_produto, valor: valor_produto }
    itens << item
  end
  
  calcular_desconto(itens)