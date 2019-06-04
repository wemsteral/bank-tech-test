# frozen_string_literal: true

class Deposit
  attr_reader :date, :credit_amount, :debit_amount, :balance

  def initialize(amount, balance)
    @date = Date.today.strftime('%m/%d/%Y')
    @credit_amount = amount.to_s + '0'
    @debit_amount = nil
    @balance = balance
  end
end
