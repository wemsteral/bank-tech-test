# frozen_string_literal: true

require 'date'

class Account
  attr_reader :balance, :account_history

  def initialize(account_history)
    @balance = 0
    @account_history = account_history
  end

  def deposit(deposit_amount)
    @deposit_amount = deposit_amount
    @balance += deposit_amount
    update_credit_history
  end

  def withdraw(withdrawal_amount)
    @withdrawal_amount = withdrawal_amount
    raise 'insufficient funds' if (@balance - withdrawal_amount) < 0

    @balance -= withdrawal_amount
    update_debit_history
  end

  private

  def update_credit_history
    balance = @balance
    @account_history.update([Date.today.strftime('%m/%d/%Y'), @deposit_amount, nil, balance])
  end

  def update_debit_history
    balance = @balance
    @account_history.update([Date.today.strftime('%m/%d/%Y'), nil, @withdrawal_amount, balance])
  end
end
