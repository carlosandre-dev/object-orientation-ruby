=begin
puts "Informe sua idade: "
age = gets.chomp.to_i

if age >= 18
    puts "Adulto"
elsif age >= 14
    puts "Adolescente"
else
    puts "Criança"
end
=end

count = 1
while count <= 10
    puts "-> #{count}"
    count += 1
end