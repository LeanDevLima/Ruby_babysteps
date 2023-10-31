require "cpf_cnpj"

puts 'CPF: '
cpf = gets.chomp

cleaned_cpf = cpf.gsub(/\D/, '')

if CPF.valid?(cleaned_cpf)
  puts 'CPF válido.'
else
  puts 'CPF inválido.'
end
