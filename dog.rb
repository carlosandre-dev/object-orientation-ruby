class Dog
    attr_accessor :name
    attr_reader :race

    def initialize(name, race)
        @name = name
        @race = race
    end

    def bark(text = "au, au")
        "bark: #{text}"
    end
end

dog1 = Dog.new("Thor", "Pitbull")
dog2 = Dog.new("Puc", "Rottweiler")

puts dog1.name
puts dog1.race

puts dog2.name
puts dog2.race

puts dog2.bark
