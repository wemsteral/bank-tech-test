# frozen_string_literal: true

# require 'statement'
# require 'account'
#
# describe Statement do
#   context '.new' do
#     it 'receives one argument at initialisation' do
#       expect(Statement).to respond_to(:new).with(1).argument
#     end
#   end
#
#   context '#print' do
#     it 'outputs the history in desired format' do
#       account_history = [['06/03/2019', 100, nil, 100],
#                          ['06/03/2019', 100, nil, 200]]
#
#       expect { subject.print(account_history) }.to output(
#         "date || credit || debit || balance\n06/03/2019 || 100 ||  || 100\n06/03/2019 || 100 ||  || 200\n"
#       ).to_stdout
#     end
#   end
# end
