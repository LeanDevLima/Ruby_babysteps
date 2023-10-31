preco_gas = gets.to_f
  
imposto_fixo = 0.10 * preco_gas

preco_total = preco_gas + imposto_fixo

preco_variavel = 0
valor_imposto_variavel = 0
percentual_variavel = 0


imposto_variavel = gets.to_i == 1

if imposto_variavel
  
  valor_imposto_variavel = gets.to_i
  percentual_variavel = valor_imposto_variavel / 100.0
else
  valor_imposto_variavel = 0
end

if valor_imposto_variavel == 0
  preco_variavel = 0
else
  preco_variavel = preco_total * percentual_variavel
end

preco_total += preco_variavel

formatted_price = "O preço do gás nesse mês é de R$"

if preco_total.to_i == preco_total
  formatted_price += preco_total.to_i.to_s
else
  formatted_price += sprintf("%.1f", preco_total).sub(/\.0$/, '')
end

puts formatted_price
