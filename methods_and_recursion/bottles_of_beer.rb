#!/usr/bin/env ruby

def beer_string(beer_quantity, bottles = 'bottles', bottle = 'bottles')
  if beer_quantity > 0
    puts "#{beer_quantity} #{bottles} of beer on the wall,"\
    " #{beer_quantity} #{bottles} of beer.\n"\
    "Take one down and pass it around, #{beer_quantity - 1} #{bottle}"\
    " of beer on the wall.\n"\
    "\n"
  else
    no_beer_string
  end
end

def no_beer_string
  puts "No more bottles of beer on the wall, no more bottles of beer.\n"\
       "Go to the store and buy some more, 99 bottles of beer on the wall.\n"\
       "\n"
end

def bottles_of_beer(beer_quantity)
  if beer_quantity > 2
    beer_string(beer_quantity)
    bottles_of_beer(beer_quantity - 1)
  elsif beer_quantity == 2
    beer_string(beer_quantity, 'bottles', 'bottle')
    bottles_of_beer(beer_quantity - 1)
  elsif beer_quantity == 1
    beer_string(beer_quantity, 'bottle', 'bottles')
    beer_string(beer_quantity - 1)
  end
end

bottles_of_beer(99)
