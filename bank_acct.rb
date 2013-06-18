class BankAccount
	attr_accessor :balance, :loan_amt, :name



	def initialize(name, balance)
		@balance = balance
		@loan_amt = 0.00
		@name = name
	end

	def deposit(deposit)
		puts "#{@name}, your previous balance was #{@balance}"
		@balance += deposit
		@balance = @balance.round(2)
		puts "#{@name}, your new balance is #{@balance}" 
	end

	def withdraw(withdraw)
		puts "#{@name}, your previous balance was #{@balance}"
		@balance -= withdraw
		@balance = @balance.round(2)
		puts "#{@name}, your new balance is #{@balance}" 
	end

	def get_balance
		puts "Your current balance is #{@balance}"
	end

	def take_loan(amt)
		@loan_amt += amt
	end

	def repay_loan(amt)
		@loan_amt -= amt
	end

	def accrue_interest
		@loan_amt += @loan_amt*0.06
	end

	def get_outstanding_loan
		puts "Your current balance is #{@loan_amt}"
	end

	def self.transfer_money(acct_1, acct_2, amount)
		acct_1.withdraw_money(amount)
		acct_2.deposit_money(amount)
	end

	

end


