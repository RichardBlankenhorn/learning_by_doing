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
      change = @total.abs
      @total = 0.00
      "Your change is $#{format('%.2f', change)}"
    elsif @total > 0
      "You owe $#{format('%.2f', total)}"
    else
      total
    end
  end
end
