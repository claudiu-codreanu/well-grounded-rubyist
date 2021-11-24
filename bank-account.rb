module Bank
    class Account
        attr_accessor :balance

        def initialize(balance = 0)
            @balance = balance
        end

        def +(amount)
            @balance += amount
            self
        end

        def -(amount)
            @balance -= amount
            self
        end

        def to_s
            balance.to_s
        end
    end
end

# binding.irb

acc = Bank::Account.new(20)
acc -= 5
puts "New balance: #{acc}"