# frozen_string_literal: true

class History
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def update(transaction)
    @transactions << transaction
  end

  def print
    puts 'date || credit || debit || balance'
    @transactions.each do |entry|
      puts "#{entry.date} || #{entry.credit_amount} || #{entry.debit_amount} || #{entry.balance}0"
    end
  end
end
