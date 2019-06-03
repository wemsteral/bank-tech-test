require 'account'

describe Account do
  it "initialises with empty account" do
    expect(subject.balance).to eq 0
  end
end
