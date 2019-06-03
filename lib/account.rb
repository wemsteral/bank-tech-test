# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def withdraw(withdrawal_amount)
    if (@balance - withdrawal_amount) < 0 || @balance == 0
      raise "insufficient funds"
    else
      @balance -= withdrawal_amount
    end
  end
end
