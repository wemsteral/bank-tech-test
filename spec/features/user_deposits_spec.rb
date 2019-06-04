# frozen_string_literal: true

describe 'user deposits' do
  it 'user can deposit money into account' do
    account = Account.new
    account.deposit(5000.00)
    expect(account.balance).to eq 5000.00
  end
end
