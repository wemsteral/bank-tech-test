# frozen_string_literal: true

require 'date'
require_relative 'deposit'
require_relative 'withdrawal'

class Account
  attr_reader :balance, :account_history

  def initialize(account_history: History.new, starting_balance: 0.00)
    @balance = starting_balance
    @account_history = account_history
  end

  def deposit(deposit_amount)
    @balance += deposit_amount.round(2)
    @account_history.update(Deposit.new(deposit_amount, @balance))
  end

  def withdraw(withdrawal_amount)
    raise 'insufficient funds' if (@balance - withdrawal_amount) < 0.00

    @balance -= withdrawal_amount.round(2)
    @account_history.update(Withdrawal.new(withdrawal_amount, @balance))
  end
end
