# frozen_string_literal: true

class Withdrawal
  attr_reader :date, :debit_amount, :credit_amount, :balance

  def initialize(amount, balance)
    @date = Date.today.strftime('%m/%d/%Y')
    @debit_amount = amount.to_s + '0'
    @credit_amount = nil
    @balance = balance
  end
end
