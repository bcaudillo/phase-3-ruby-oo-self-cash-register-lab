
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title, price, quantity = 1)
        self.last_transaction = quantity * price
        self.total += last_transaction
        quantity.times do
            self.items << title
        end
    end
    
    def apply_discount
    
        if discount = 0
            "There is no discount to apply."
        else 
            percent = self.total * (self.discount.0)%100
            self.total -= discounted
            "After the discount, the total comes to #{self.total}"
        end
    end
    
    
    def void_last_transaction
        self.total -= self.last_transaction
    end




end
