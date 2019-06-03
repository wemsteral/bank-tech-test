# frozen_string_literal: true

# context '#account_history' do
#   it 'stores an many instances of a deposit' do
#     subject.deposit(10)
#     subject.deposit(20)
#     subject.deposit(70)
#     expect(subject.account_history.count).to eq 3
#   end
#
#   it 'stores an many instances of a withdrawal' do
#     subject.deposit(100)
#     subject.account_history.clear
#     subject.withdraw(10)
#     subject.withdraw(20)
#     subject.withdraw(70)
#     expect(subject.account_history.count).to eq 3
#   end
#
#   it 'stores many instances of withdrawals and deposits' do
#     subject.deposit(1000)
#     subject.deposit(3000)
#     subject.withdraw(200)
#     subject.withdraw(500)
#     expect(subject.account_history).to eq(
#       [['06/03/2019', 1000, nil, 1000],
#        ['06/03/2019', 3000, nil, 4000],
#        ['06/03/2019', nil, 200, 3800],
#        ['06/03/2019', nil, 500, 3300]]
#     )
#   end
# end
