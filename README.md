### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

```
As a user
So I can keep track of my finances
I want to be able to view my account balance

As a user
So I can store my money in the bank
I want to be able to deposit an amount of money

As a user
So I can spend my money in cash
I want to be able to withdraw an amount of money

As a user
So I can view my banking history
I want to be able to see a statement of all my activity
```

### Set Up

- Clone this repo
- Bundle Install
- Tests run with terminal command 'rspec'
- Coverage visible in rspec report

### How to use

- Enter irb via terminal
  To set up both objects:
- `account = Account.new`
- Call the account methods to your heart's content.

### Planning

![DM1](https://github.com/wemsteral/bank-tech-test/blob/master/DM1.jpg)

### Approach

Models -

I decided to use 4 classes for this challenge: Account, History, Deposit & Withdrawal.
Account is the main point of contact for the user as this mimics 'real life', a customer would manage their account via their account.\n
History is a separate class as a preemptive measure. It is likely that, later down the line, this class could communicate with a database and a single account. Even without a database, it makes managing the data easier and cleaner.\n
Deposit & Withdrawal arguably _could_ have been one class (Transaction?), but again, I feel as they are fundamentally different things, it is important for them to have their own identity. It makes the project more scalable again, in that it wouldn't be difficult to now filter between types of transaction.

Testing -

Feature testing dictated the process in which this app would be used in the terminal.\n
Unit testing required a lot of mocking and stubbing to eliminate dependencies. 'object_double' in rspec is very useful!

Next time -

I would consider a Controller class and simplify the Account class.
