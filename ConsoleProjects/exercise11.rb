def mostrar_relacionamentos
  print "Você tem pai? (s/n): "
  tem_pai = gets.chomp.downcase == 's'
  nome_pai = ""

  print "Você tem mãe? (s/n): "
  tem_mae = gets.chomp.downcase == 's'
  nome_mae = ""

  print "Você tem amigos? (s/n): "
  tem_amigos = gets.chomp.downcase == 's'
  nomes_amigos = []

  print "Você tem irmãos? (s/n): "
  tem_irmaos = gets.chomp.downcase == 's'
  nomes_irmaos = []

  puts "\nNomes dos relacionamentos:"

  if tem_pai
    print "Digite o nome do pai: "
    nome_pai = gets.chomp
    puts "Pai: #{nome_pai}"
  end

  if tem_mae
    print "Digite o nome da mãe: "
    nome_mae = gets.chomp
    puts "Mãe: #{nome_mae}"
  end

  if tem_amigos
    print "Digite os nomes dos amigos (separados por vírgula): "
    nomes_amigos = gets.chomp.split(',').map(&:strip)
    puts "Amigos: #{nomes_amigos.join(', ')}"
  end

  if tem_irmaos
    print "Digite os nomes dos irmãos (separados por vírgula): "
    nomes_irmaos = gets.chomp.split(',').map(&:strip)
    puts "Irmãos: #{nomes_irmaos.join(', ')}"
  end
end

# Chamando a função para executar o algoritmo
mostrar_relacionamentos
