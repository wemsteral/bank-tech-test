# frozen_string_literal: true

describe 'user withdrawals' do
  it 'user can withdraw money from account' do
    account = Account.new
    account.deposit(5000.00)
    account.withdraw(2500.00)
    expect(account.balance).to eq 2500.00
  end
end
