module BankCalculations
  def calculate_interest(principle, months, rate)
    principle * (months / 12) * rate
  end
end

class Account
  attr_reader :type, :balance, :account_number

  def initialize(account_number, type, balance)
    @account_number = account_number
    @type = type
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount if @balance - amount >= 0
  end
end

class SavingsAccount < Account
  include BankCalculations

  def initialize(account_number, balance)
    super(account_number, "Savings", balance)
  end

  def credit_interest(months)
    @balance += calculate_interest(@balance, months, 0.06)
  end
end

class CurrentAccount < Account
  include BankCalculations

  def initialize(account_number, balance)
    super(account_number, "Savings", balance)
  end
  
  def credit_interest(months)
    @balance += calculate_interest(@balance, months, 0.02)
  end
end

saving_account = SavingsAccount.new(1001, 50000)
puts "Savings Account initial balance: #{saving_account.balance}"
puts "Savings Account after credit_interest: #{saving_account.credit_interest(24)}"

current_account = CurrentAccount.new(1001, 50000)
puts "Current Account initial balance: #{current_account.balance}"
puts "Current Account after credit_interest: #{current_account.credit_interest(24)}"

puts "After withdrawing 6000 from Savings account: #{saving_account.withdraw(6000)}"
puts "After depositing 500 in Current Account: #{current_account.deposit(500)}"
