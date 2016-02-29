#!/usr/bin/env ruby

def bottles_of_beer(beer_quantity)
  if beer_quantity > 2
    puts "#{beer_quantity.to_s} bottles of beer on the wall, #{beer_quantity.to_s} bottles of beer.\n" +
         "Take one down and pass it around, #{(beer_quantity - 1).to_s} bottles of beer on the wall.\n" +
         "\n"
    beer_quantity -= 1
  end

  if beer_quantity > 2
    bottles_of_beer(beer_quantity)
  elsif beer_quantity == 2
    puts "#{beer_quantity.to_s} bottles of beer on the wall, #{beer_quantity.to_s} bottles of beer.\n" +
         "Take one down and pass it around, #{(beer_quantity - 1).to_s} bottle of beer on the wall.\n" +
         "\n"
    beer_quantity -= 1
    bottles_of_beer(beer_quantity)
  elsif beer_quantity == 1
    puts "#{beer_quantity.to_s} bottle of beer on the wall, #{beer_quantity.to_s} bottle of beer.\n" +
         "Take one down and pass it around, no more bottles of beer on the wall.\n" +
         "\n"
    beer_quantity -= 1
    bottles_of_beer(beer_quantity)
  elsif beer_quantity == 0
    puts "No more bottles of beer on the wall, no more bottles of beer.\n" +
         "Go to the store and buy some more, 99 bottles of beer on the wall.\n" +
         "\n"
  end
end

bottles_of_beer(99)
