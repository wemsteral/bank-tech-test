# frozen_string_literal: true

describe 'user deposits' do
  let(:history) { History.new }
  let(:account) { Account.new(history) }

  it 'user can deposit money into account' do
    account.deposit(5000.00)
    expect(account.balance).to eq 5000.00
  end
end
