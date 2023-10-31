# Implement a currency converter that converts reais into euros (using floating point variables).

require 'net/http'
require 'json'

uri = URI("https://economia.awesomeapi.com.br/last/EUR-BRL")
response = Net::HTTP.get(uri)

data = JSON.parse(response)

bid_euro_to_brl = data["EURBRL"]["bid"].to_f

puts "Euro to Brazilian Real exchange rate (EUR to BRL): #{bid_euro_to_brl}"

print "Enter the amount in Euros: "
value_in_euros = gets.chomp.to_f

value_in_reais = value_in_euros * bid_euro_to_brl

puts "The value in Reais (BRL) is: #{value_in_reais}"