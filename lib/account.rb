# frozen_string_literal: true

require 'date'
require_relative 'deposit'
require_relative 'withdrawal'
require_relative 'history'

class Account
  attr_reader :balance, :account_history

  def initialize(account_history: History.new, starting_balance: 0.00)
    @balance = starting_balance
    @account_history = account_history
  end

  def deposit(deposit_amount, deposit = Deposit)
    @balance += deposit_amount.to_f.round(2)
    @account_history.update(deposit.new(deposit_amount.to_f, @balance))
  end

  def withdraw(withdrawal_amount, withdrawal = Withdrawal)
    raise 'insufficient funds' if (@balance - withdrawal_amount) < 0.00

    @balance -= withdrawal_amount.to_f.round(2)
    @account_history.update(withdrawal.new(withdrawal_amount.to_f, @balance))
  end

  private
end
