require 'account'

describe Account do
  it "initialises with empty account" do
    expect(subject.balance).to eq 0
  end

  it "responds to 'deposit'" do
    expect(subject).to respond_to :deposit
  end

  it "allows user to deposit a chosen amount of money" do
    expect { subject.deposit(100) }.to change { subject.balance }.from(0).to(100)
  end
end
