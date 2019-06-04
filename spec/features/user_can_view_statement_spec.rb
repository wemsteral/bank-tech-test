# frozen_string_literal: true

describe 'account statement' do
  it 'user can view their transaction history as statement' do
    account = Account.new
    date = Date.today.strftime('%m/%d/%Y')
    account.deposit(5000.00)
    account.withdraw(1400.00)
    account.deposit(250.00)
    expect { account.account_history.print }.to output(
      "date || credit || debit || balance
#{date} || 5000.00 ||  || 5000.00
#{date} ||  || 1400.00 || 3600.00
#{date} || 250.00 ||  || 3850.00\n"
    ).to_stdout
  end
end
