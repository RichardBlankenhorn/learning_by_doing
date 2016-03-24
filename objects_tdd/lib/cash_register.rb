# Creating CashRegister class
class CashRegister
  attr_reader :total
  def initialize
    puts "You owe $#{format('%.2f', 0)}"
    @total = 0
  end

  def purchase(amount)
    puts "$#{format('%.2f', @total += amount)}"
    @total
  end

  def payment(amount)
    if amount > @total
      puts "Your change is $#{format('%.2f', (@total -= amount) * -1)}"
      @total = 0
    else
      puts "You owe $#{format('%.2f', (@total -= amount))}"
      @total
    end
  end
end
