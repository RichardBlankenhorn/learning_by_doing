#!/usr/bin/env ruby

numbers = (1..100).to_a
fizz_buzz_array = Array.new

count = 1
while count <= 100
  if count % 3 == 0 && count % 5 == 0
    fizz_buzz_array.push('FizzBuzz')
    count += 1
  elsif count % 3 == 0
    fizz_buzz_array.push('Fizz')
    count += 1
  elsif count % 5 == 0
    fizz_buzz_array.push('Buzz')
    count += 1
  else
    fizz_buzz_array.push(count)
    count += 1
  end
end

print fizz_buzz_array
