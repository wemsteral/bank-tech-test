# frozen_string_literal: true

class Withdrawal
  attr_reader :date, :debit_amount, :credit_amount, :balance

  def initialize(amount, balance)
    @date = Date.today.strftime('%m/%d/%Y')
    @debit_amount = amount
    @credit_amount = nil
    @balance = balance
  end
end
