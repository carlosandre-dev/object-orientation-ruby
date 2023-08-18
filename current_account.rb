require_relative 'account'

class CurrentAccount < Account
  attr_accessor :limit

  def initialize(number, holder, balance, limit)
    super(number, holder, balance)
    @limit = limit
  end

  def withdraw(value)
    if (balance + limit) >= value
      self.balance -= value  
    else
      puts "Não foi possível efetuar o saque, saldo insuficiente"
    end
  end

end 