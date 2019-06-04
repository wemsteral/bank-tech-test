# frozen_string_literal: true

require 'date'

class Deposit
  attr_reader :date, :credit_amount, :debit_amount, :balance

  def initialize(amount, balance)
    @date = Date.today.strftime('%m/%d/%Y')
    @credit_amount = amount
    @debit_amount = nil
    @balance = balance
  end
end
