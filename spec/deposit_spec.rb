# frozen_string_literal: true

describe 'deposit' do
  let(:subject) { Deposit.new(1000, 2000) }

  context '.new' do
    it 'receives two arguments at initialisation' do
      expect(Deposit).to respond_to(:new).with(2).arguments
    end

    it 'is initialized with todays date as an attribute' do
      expect(subject.date).to eq Date.today.strftime('%m/%d/%Y')
    end
  end
end
