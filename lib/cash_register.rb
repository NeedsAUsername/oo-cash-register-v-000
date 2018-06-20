class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(employee_discount = nil)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        self.items << self.name
    end

    def apply_discount
        if self.discount == nil
            "There is no discount to apply."
        else self.total *= ((100 - self.discount)/100.0)
            "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def items
        @items
    end


end
