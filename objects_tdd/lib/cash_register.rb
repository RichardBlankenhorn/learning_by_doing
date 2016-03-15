# Creating CashRegister class
class CashRegister
  attr_reader :total
  def initialize
    @total = 0
    puts "You owe $#{format('%.2f', @total)}"
    @total
  end

  def purchase(amount)
    @total += amount
    puts "$#{format('%.2f', @total)}"
    @total
  end

  def payment(amount)
    @total -= amount
    if @total < 0
      puts "Your change is $#{format('%.2f', @total * -1)}"
      @total = 0
    else
      puts "You owe $#{format('%.2f', @total)}"
      @total
    end
  end
end
