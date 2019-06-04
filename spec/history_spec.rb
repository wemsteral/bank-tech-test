# frozen_string_literal: true

require 'history'

describe History do
  let(:subject) { History.new }

  context '.new' do
    it 'is initialized with an empty array' do
      expect(subject.transactions).to eq []
    end
  end

  context '#update' do
    it 'pushes argument to transactions array' do
      subject.update('argument')
      expect(subject.transactions).to eq ['argument']
    end
  end

  context '#print' do
    it 'outputs a formatted transaction' do
      deposit_entry = object_double('deposit_entry',
                                    date: '01/01/19',
                                    credit_amount: '500.00',
                                    debit_amount: nil,
                                    balance: '500.00')
      subject.update(deposit_entry)
      expect { subject.print }.to output(
        "date || credit || debit || balance\n01/01/19 || 500.00 ||  || 500.00\n"
      ).to_stdout
    end

    it 'outputs multiple formatted transactions' do
      deposit_entry1 = object_double('deposit_entry1',
                                     date: '01/01/19',
                                     credit_amount: '500.00',
                                     debit_amount: nil,
                                     balance: '500.00')
      deposit_entry2 = object_double('deposit_entry2',
                                     date: '02/01/19',
                                     credit_amount: '600.00',
                                     debit_amount: nil,
                                     balance: '1100.00')
      deposit_entry3 = object_double('deposit_entry3',
                                     date: '03/01/19',
                                     credit_amount: nil,
                                     debit_amount: '750',
                                     balance: '350.00')
      subject.update(deposit_entry1)
      subject.update(deposit_entry2)
      subject.update(deposit_entry3)
      p subject.print
      expect { subject.print }.to output("date || credit || debit || balance
01/01/19 || 500.00 ||  || 500.00
02/01/19 || 600.00 ||  || 1100.00
03/01/19 ||  || 750 || 350.00\n")
        .to_stdout
    end
  end
end
