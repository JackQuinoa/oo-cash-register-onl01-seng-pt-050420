class CashRegister
  
  attr_accessor :total, :discount, :items 
 
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do 
    @items << title * quantity
  end
  
  
  def apply_discount
    if @discount != 0
      @total = @total.to_f * (1 - @discount.to_f / 100.0) 
      return "After the discount, the total comes to $#{total.to_i}."
    else 
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
     
  
end
