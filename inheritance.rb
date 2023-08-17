class Employee
    attr_accessor :name, :email, :cpf

    def initialize
        @name = name
        @email = email
        @cpf = cpf
    end

    def to_s
        "Nome:#{@name} Email:#{@email} CPF:#{@cpf}"
    end

end

class Manager < Employee
    attr_accessor :key

    def initialize
        @key = key
    end
end