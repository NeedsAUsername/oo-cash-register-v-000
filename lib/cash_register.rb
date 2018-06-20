class CashRegister
    attr_accessor :total, :discount

    def initialize(employee_discount = nil)
        @total = 0
        @discount = employee_discount
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end

    def apply_discount
        if self.discount == nil
            puts "there is no discount to apply"
        else self.total *= ((100 - self.discount)/100.0)
        end
    end


end
