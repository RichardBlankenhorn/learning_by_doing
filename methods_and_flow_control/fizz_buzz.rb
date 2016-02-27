#!/usr/bin/env ruby

count = 1
while count <= 100
  if count % 3 == 0 && count % 5 == 0
    puts 'FizzBuzz'
    count += 1
  elsif count % 3 == 0
    puts 'Fizz'
    count += 1
  elsif count % 5 == 0
    puts 'Buzz'
    count += 1
  else
    puts count.to_s
    count += 1
  end
end
