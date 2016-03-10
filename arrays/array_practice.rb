#!/usr/bin/env ruby

practice_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts practice_array.join('...') + '...'
puts "T-#{practice_array.reverse.join(', ')}...  BLASTOFF!"
puts "The last element is #{practice_array[-1]}"
puts "The first element is #{practice_array[0]}"
puts "The third element is #{practice_array[2]}"
puts "The element with an index of #{practice_array.index(4)} "\
"is #{practice_array[3]}"
puts "The second from last element is #{practice_array[-2]}"
puts 'The first four elements are '\
"'#{(practice_array[0..3]).to_s.delete('[').delete(']')}'"
puts "If we delete 5, 6 and 7 from the array, we're left with "\
"[#{(practice_array - practice_array.slice!(4..6)).join(',')}]"
puts "If we add 5 at the beginning of the array, we're left "\
"with [#{practice_array.insert(0, 5).join(',')}]"
puts "If we add 6 at the end of the array, we're left with "\
"[#{practice_array.push(6).join(',')}]"
puts "Only the elements #{practice_array.reject! { |element| element < 9 }} "\
'are > 8.'
puts 'If we remove all the elements, then the length of the array is '\
"#{practice_array.clear.length}"
