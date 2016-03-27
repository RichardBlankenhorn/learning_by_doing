# Creating CashRegister class
class CashRegister
  attr_reader :total
  def initialize
    @total = 0.00
  end

  def purchase(amount)
    @total += amount
  end

  def payment(amount)
    @total -= amount
    if @total < 0
      puts "Your change is $#{format('%.2f', total * -1)}"
      @total = 0.00
    else
      puts "You owe $#{format('%.2f', total)}"
    end
  end
end
