#!/usr/bin/env ruby

class CashRegister
  def initialize
    @total = 0
  end

  def purchase(purchase_amount)
    @total = purchase_amount.to_f + @total
    puts "$#{@total}"
  end

  def pay(pay_amount)
    @total = @total - pay_amount.to_f
    if @total < 0
      puts "Your change is $#{(@total) * -1}"
      @total = 0
    else
      puts "Your new total is $#{@total}"
    end
  end

  def total()
    current_total = @total
    puts "You currently owe $#{current_total}"
  end

end

register = CashRegister.new

register.total
register.purchase(30)
register.total
register.pay(0.40)
register.purchase(1)
register.total
register.pay(50)
register.total


