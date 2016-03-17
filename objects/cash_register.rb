#!/usr/bin/env ruby
# Creating the CashRegister class
class CashRegister
  def initialize
    @total = 0.00
  end

  def purchase(purchase_amount)
    @total += purchase_amount
    puts "$#{format('%.2f', @total)}"
  end

  def pay(pay_amount)
    @total -= pay_amount
    if @total < 0
      puts "Your change is $#{format('%.2f', (@total * -1))}"
      @total = 0
    else
      puts "Your new total is $#{format('%.2f', @total)}"
    end
  end

  def total
    current_total = @total
    puts "You currently owe $#{format('%.2f', current_total)}"
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
