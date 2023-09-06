require_relative 'lib/guess'
round = Guess.new

until round.winer do
    puts "Digite um número: "
    number = gets.to_i
    puts round.try_guess(number)
end
