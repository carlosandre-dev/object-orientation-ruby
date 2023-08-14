class Guess
    attr_reader :number
    attr_reader :winer

    def initialize
        @number = Random.rand(1..10)
        @winer = false
    end

    def try_guess(number = 0)
        if (number == @number)
            @winer = true
            return "Você VENCEU!"
        elsif (number > @number)
            return "Número muito alto"
        else
            return "Número muito baixo"
        end
    end
end

round = Guess.new

until round.winer do
    puts "Digite um número: "
    number = gets.to_i
    puts round.try_guess(number)
end
