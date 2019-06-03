# frozen_string_literal: true

require 'account'

describe Account do
  it 'initialises with empty account' do
    expect(subject.balance).to eq 0
  end

  # deposit

  context '#deposit' do
    it "responds to 'deposit'" do
      expect(subject).to respond_to :deposit
    end

    it 'allows user to deposit a chosen amount of money' do
      expect { subject.deposit(100) }.to change { subject.balance }.from(0).to(100)
    end
  end

  # withdraw 

  context '#withdraw' do
    it "responds to 'withdraw'" do
      expect(subject).to respond_to :withdraw
    end

    it 'allows user to withdraw a chosen amount of money' do
      subject.deposit(50)
      expect { subject.withdraw(50) }.to change { subject.balance }.from(50).to(0)
    end

    it 'prohibits user from withdrawals if balance is 0' do
      expect{ subject.withdraw(50) }.to raise_error "insufficient funds"
    end

    it 'also prohibits user if withdrawal will result in less than 0' do
      subject.deposit(50)
      expect { subject.withdraw(100) }.to raise_error "insufficient funds"
    end
  end
end
