# frozen_string_literal: true

describe 'account statement' do
  it 'user can view their transaction history as statement' do
    account = Account.new
    account.deposit(5000.00)
    account.withdraw(1400.00)
    account.deposit(250.00)
    expect { account.account_history.print }.to output(
      "date || credit || debit || balance
06/04/2019 || 5000.0 ||  || 5000.0
06/04/2019 ||  || 1400.0 || 3600.0
06/04/2019 || 250.0 ||  || 3850.0\n"
    ).to_stdout
  end
end