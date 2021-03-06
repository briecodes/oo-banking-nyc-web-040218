require 'pry'
class BankAccount
  attr_accessor :status, :balance
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    @deposit = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    return "Your balance is $#{self.balance}."
  end

  def valid?
    if @balance > 0 && @status == "open"
      true
    else
      false
    end
  end

  def close_account
    self.status = "closed"
  end
end
