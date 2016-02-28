#!/usr/bin/env ruby

def obtain_word()
  word = gets.chomp.to_s
end

# When using this method, pass TRUE as the second argument if the first instance of the type of word.
# Types of words would include noun, plNoun, adjective, place, number, part (part of body), game, plant and verb.
def get_type_of_word(type_of_word, first_instance=FALSE)
  if type_of_word == 'noun'
    if first_instance
      puts 'Give me a noun: '
      obtain_word
    else
      puts 'Give me another noun: '
      obtain_word
    end
  elsif type_of_word == 'plNoun'
    if first_instance
      puts 'Give me a plural noun: '
      obtain_word
    else
      puts 'Give me another plural noun: '
      obtain_word
    end
  elsif type_of_word == 'adjective'
    if first_instance
      puts 'Give me an adjective: '
      obtain_word
    else
      puts 'Give me another adjective: '
      obtain_word
    end
  elsif type_of_word == 'verb'
    if first_instance
      puts 'Give me a verb ending in ING: '
      obtain_word
    else
      puts 'Give me another verb ending in ING: '
      obtain_word
    end
  elsif type_of_word == 'game'
    if first_instance
      puts 'Give me a game: '
      obtain_word
    else
      puts 'Give me another game: '
      obtain_word
    end
  elsif type_of_word == 'plant'
    if first_instance
      puts 'Give me a plant: '
      obtain_word
    else
      puts 'Give me another plant: '
      obtain_word
    end
  elsif type_of_word == 'part'
    if first_instance
      puts 'Give me a part of the body: '
      obtain_word
    else
      puts 'Give me another part of the body: '
      obtain_word
    end
  elsif type_of_word == 'number'
    if first_instance
      puts 'Give me a number: '
      obtain_word
    else
      puts 'Give me another number: '
      obtain_word
    end
  elsif type_of_word == 'place'
    if first_instance
      puts 'Give me a place: '
      obtain_word
    else
      puts 'Give me another place: '
      obtain_word
    end
  end
end


puts "Here is your madlib:",
     "A vacation is when you take a trip to some #{get_type_of_word('adjective', TRUE)} place",
     "with your #{get_type_of_word('adjective')} family. Usually you go to some place",
     "that is near a/an #{get_type_of_word('noun', TRUE)} or up on a/an #{get_type_of_word('noun')}.",
     "A good vacation place is one where you can ride #{get_type_of_word('plNoun', TRUE)}",
     "or play #{get_type_of_word('game', TRUE)} or go hunting for #{get_type_of_word('plNoun')}. I like",
     "to spend my time #{get_type_of_word('verb', TRUE)} or #{get_type_of_word('verb')}.",
     "When parents go on a vacation, they spend their time eating",
     "three #{get_type_of_word('plNoun')} a day, and fathers play golf, and mothers",
     "sit around #{get_type_of_word('verb')}. Last summer, my little brother",
     "fell in a/an #{get_type_of_word('noun')} and got poison #{get_type_of_word('plant', TRUE)} all",
     "over his #{get_type_of_word('part', TRUE)}. My family is going to go to (the)",
     "#{get_type_of_word('place', TRUE)}, and I will practice #{get_type_of_word('verb')}. Parents",
     "need vacations more than kids because parents are always very",
     "#{get_type_of_word('adjective')} and because they have to work #{get_type_of_word('number', TRUE)}",
     "hours every day all year making enough #{get_type_of_word('plNoun')} to pay",
     "for the vacation."


