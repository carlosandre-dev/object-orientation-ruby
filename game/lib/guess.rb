require_relative 'startup'
require_relative 'raffle_number'

class Guess
    attr_reader :number
    attr_reader :winer

    def initialize
        Startup.initializing
        @number = RaffleNUmber.raffle
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