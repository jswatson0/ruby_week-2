class BankAccount
	attr_accessor :balance, :loan_amt



	def initialize
		@balance = 0.00
		@loan_amt = 0.00
	end

	def deposit_money(deposit)
		puts "Your previous balance was #{@balance}"
		@balance += deposit
		@balance = @balance.round(2)
		puts "Your new balance is #{@balance}" 
	end

	def withdraw_money(withdraw)
		puts "Your previous balance was #{@balance}"
		@balance -= withdraw
		@balance = @balance.round(2)
		puts "Your new balance is #{@balance}" 
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

	

end


