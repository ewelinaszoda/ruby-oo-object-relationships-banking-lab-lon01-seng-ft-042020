# cannot change the name, just read 
require 'pry'
class BankAccount

    attr_accessor :balance, :status
     
    attr_reader :name
   
    def initialize(name, balance = 1000, status = "open")
        @name = name
        @balance = balance
        @status = status
    end

    def deposit(add_money)
        @balance = @balance + add_money
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def valid?
        @status == "open" && @balance > 0
    end

    def close_account
        @status = "closed"
    end
#binding.pry
end 
