#!/usr/bin/env ruby

numbers = (1..100).to_a
fizz_buzz_array = []

count = 1
numbers.each do |value|
  if value % 3 == 0 && count % 5 == 0
    fizz_buzz_array.push('FizzBuzz')
  elsif value % 3 == 0
    fizz_buzz_array.push('Fizz')
  elsif value % 5 == 0
    fizz_buzz_array.push('Buzz')
  else
    fizz_buzz_array.push(count)
  end
  count += 1
end

puts fizz_buzz_array
