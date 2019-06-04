# frozen_string_literal: true

describe 'user withdrawals' do
  let(:history) { History.new }
  let(:account) { Account.new(history) }

  it 'user can withdraw money from account' do
    account.deposit(5000.00)
    account.withdraw(2500.00)
    expect(account.balance).to eq 2500.00
  end
end
