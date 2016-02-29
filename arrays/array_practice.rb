#!/usr/bin/env ruby

practice_array = [1,2,3,4,5,6,7,8,9,10]

print practice_array.join('...') + "...\n"
print "T-#{practice_array.reverse.join(', ')}...  BLASTOFF!\n"
print "The last element is #{practice_array[-1]}\n"
print "The first element is #{practice_array[0]}\n"
print "The third element is #{practice_array[2]}\n"
print "The element with an index of #{practice_array.index(4)} is #{practice_array[3]}\n"
print "The second from last element is #{practice_array[-2]}\n"
print "The first four elements are '#{(practice_array[0..3]).to_s.gsub('[', '').gsub(']', '')}'\n"
print "If we delete 5, 6, and 7 from the array, we're left with [#{(practice_array - practice_array.slice!(4..6)).join(',')}]\n"
print "If we add 5 at the beginning of the array, we're left with [#{practice_array.insert(0, 5).join(',')}]\n"
print "If we add 6 at the end of the array, we're left with [#{practice_array.push(6).join(',')}]\n"
print "Only the elements #{practice_array.reject! {|element| element < 9}} are > 8\n"
print "If we remove all the elements, then the length of the array is #{practice_array.clear.length}\n"
