class CashRegister
    attr_accessor :total, :discount

    def initialize(employee_discount = nil)
        @total = 0
        employee_discount != nil ? @discount = employee_discount
    end

    def total
        @total
    end
end
