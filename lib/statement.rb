# frozen_string_literal: true

class Statement
  def print(account_history)
    puts 'date || credit || debit || balance'
    account_history.each do |entry|
      puts "#{entry[0]} || #{entry[1]} || #{entry[2]} || #{entry[3]}"
    end
  end
end
