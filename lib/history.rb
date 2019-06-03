# frozen_string_literal: true

class History
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def update(transaction)
    @transactions << transaction
  end
end
