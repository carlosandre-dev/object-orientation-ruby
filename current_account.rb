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

  def transfer(destination_account, value)
    if (balance + limit) >= value 
      withdraw(value)
      destination_account.deposit(value)
    else
      puts "Não é possível transferir! Saldo insuficiente."
    end
  end

end 