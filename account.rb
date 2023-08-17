require_relative 'client'

class Account
  attr_reader :number, :holder
  attr_accessor :balance

  def initialize(number, holder, balance)
    @number = number
    @holder = holder
    @balance = balance
  end

  def withdraw(value)
    if balance >= value
      self.balance -= value  
    else
      puts "Não foi possível efetuar o saque, saldo insuficiente"
    end
  end

  def deposit(value)
    self.balance += value
  end

  def transfer(destination_account, value)
    if balance >= value 
      withdraw(value)
      destination_account.deposit(value)
    else
      puts "Não é possível transferir! Saldo insuficiente."
    end
  end
end 