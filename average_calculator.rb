puts "Digite quantos números você deseja inserir: "
range = gets.chomp.to_i
i = 1
number = 0, sum = 0

while i <= range
  puts "Digite o número #{i}: "
  number = gets.chomp.to_i
  sum += number
  i += 1
end

average = sum / range
puts "A média dos números é: #{average}"