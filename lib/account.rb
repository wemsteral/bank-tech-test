# frozen_string_literal: true

require 'date'

class Account
  attr_reader :balance
  attr_reader :account_history

  def initialize
    @balance = 0
    @account_history = []
  end

  def deposit(deposit_amount)
    @deposit_amount = deposit_amount
    @balance += deposit_amount
    update_credit_history
  end

  def withdraw(withdrawal_amount)
    @withdrawal_amount = withdrawal_amount
    if (@balance - withdrawal_amount) < 0 || @balance == 0
      raise 'insufficient funds'
    end

    @balance -= withdrawal_amount
    update_debit_history
  end

  private

  def update_credit_history
    balance = @balance
    deposit_event = [Date.today.strftime('%m/%d/%Y'), @deposit_amount, nil, balance]
    @account_history.push(deposit_event)
  end

  def update_debit_history
    balance = @balance
    withdrawal_event = [Date.today.strftime('%m/%d/%Y'), nil, @withdrawal_amount, balance]
    @account_history.push(withdrawal_event)
  end
end
