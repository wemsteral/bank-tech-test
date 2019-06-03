# frozen_string_literal: true

require 'account'
require 'date'

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

    it 'records an instance of a deposit' do
      expect(subject.deposit(100)).to eq [["06/03/2019", 100, nil, 100]]
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
      expect { subject.withdraw(50) }.to raise_error "insufficient funds"
    end

    it 'also prohibits user if withdrawal will result in less than 0' do
      subject.deposit(50)
      expect { subject.withdraw(100) }.to raise_error "insufficient funds"
    end

    it 'records an instance of a withdrawal' do
      subject.deposit(100)
      subject.account_history.clear
      expect(subject.withdraw(100)).to eq [["06/03/2019", nil, 100, 0]]
    end
  end

  context '#account_history' do
    it 'stores an many instances of a deposit' do
      subject.deposit(10)
      subject.deposit(20)
      subject.deposit(70)
      expect(subject.account_history.count).to eq 3
    end

    it 'stores an many instances of a withdrawal' do
      subject.deposit(100)
      subject.account_history.clear
      subject.withdraw(10)
      subject.withdraw(20)
      subject.withdraw(70)
      expect(subject.account_history.count).to eq 3
    end

    it 'stores many instances of withdrawals and deposits' do
      subject.deposit(1000)
      subject.deposit(3000)
      subject.withdraw(200)
      subject.withdraw(500)
      expect(subject.account_history).to eq(
      [["06/03/2019", 1000, nil, 1000],
      ["06/03/2019", 3000, nil, 4000],
      ["06/03/2019", nil, 200, 3800],
      ["06/03/2019", nil, 500, 3300]])
    end
  end
end
