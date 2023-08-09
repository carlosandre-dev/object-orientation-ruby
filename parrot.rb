class Parrot
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def repeat_sentence(sentence = "curupacu")
        sentence
    end

    def to_s
        "Nome:#{@name} Idade:#{@age}"
    end
end

parrot1 = Parrot.new("Gambiarra", 5)
parrot2 = Parrot.new("Louro José", 10)

puts parrot1.to_s
puts parrot2.to_s

puts parrot2.repeat_sentence
puts parrot2.repeat_sentence("uau baby")