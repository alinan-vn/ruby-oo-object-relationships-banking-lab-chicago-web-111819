class BankAccount
    attr_accessor :balance, :status
    attr_reader :name
    
    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(deposit)
        @balance += deposit
    end

    def display_balance
        return "Your balance is $#{@balance}."
    end

    def valid?
        if self.status == "open" and self.balance > 0
            true
        else false
        end
    end

    def close_account
        self.status = "closed"
    end
end
