# frozen_string_literal: true

describe 'account setup' do
  let(:empty_account) { Account.new }

  it 'user can set up an account with blank history' do
    expect(empty_account.account_history.transactions).to eq []
  end

  it 'user can set up account with zero balance' do
    expect(empty_account.balance).to eq 0.00
  end

  it 'user can set up account with custom starting balance' do
    wealthy_account = Account.new(starting_balance: 1000.00)
    expect(wealthy_account.balance).to eq 1000.00
  end
end
