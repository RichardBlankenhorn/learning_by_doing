#!/usr/bin/env ruby

practice_string = "this is a string to practice with"
length = practice_string.length

puts practice_string
puts practice_string.capitalize
puts practice_string.upcase
practice_string["string"] = "'string'"
puts practice_string.capitalize
practice_string["'string'"] = "string"
puts "The string '#{practice_string}' has #{length} characters"
puts practice_string.reverse
puts (practice_string.gsub(practice_string, "practice ") * 3).rstrip + "!"
