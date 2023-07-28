puts "Informe o valor do salário: "
wage = gets.chomp.to_f
bonus = wage * 0.05
payment = wage + bonus
puts "Salário R$ #{wage}, Bônus de R$ #{bonus}, Pagamento: R$= #{payment}"