require 'shouty'

# / are delimiters / start and end
# match the exact pattern:
# Given /Lucy is 15 metres from Sean/ do 

# Use () it is called capture group and the value is pass
# a parameter:
# Given /Lucy is (15) metres from Sean/ do |distance|

# Use (15|55) to capture alternation is useful when you have
# a fixed set of values:
# Given /Lucy is (15|55) metres from Sean/ do |distance|

# dot match any single character, this example match any 2
# chars, we are limiting to only 2 digits distances:
# Given /Lucy is (..) metres from Sean/ do |distance| 

# Use a repetition modifier that comes after a char and
# tell us how many times will repeat
# the star is the most flexible modifier
# .* means any char any number of times 
# Given /Lucy is (.*) metres from Sean/ do |distance| 

# character class en un rango de caracteres que
# debe hacer match van entre corchetes
# [0123456789]* means any digit any number of times:
# Given /Lucy is ([0123456789]*) metres from Sean/ do |distance| 

# you can use [0-9] to use ranges
# Given /Lucy is ([0-9]*) metres from Sean/ do |distance|

# there are ome character classes for using digits
# for digits you can use \d
# Given /Lucy is (\d*) metres from Sean/ do |distance|

# \d for digit
# \w for word character
# \s for white character space, tab, line break

# modifiers
# * modifier any number of times including zero 0
# + modifier at least once any number of times
#Given /Lucy is (\d+) metres from Sean/ do |distance|

# you can use any number of parentesis
# capturar cualquier numero de argumentos usando todos los
# parentesis para capturar que requieras
# Given /(\w+) is (\d+) metres from (\w+)/ do |name1, distance, name2|

# ? modifier mark something as optional
# Given /(\w+) is (\d+) metres? from (\w+)/ do |name1, distance, name2|

# (?: | ) non capturing group
# Given /(\w+) (?:is|is standing) (\d+) metres? from (\w+)/ do |name1, distance, name2|


# ^  y $ anchors mark  the begin and end of the character
# Given /^(\w+) (?:is|is standing) (\d+) metres? from (\w+)$/ do |name1, distance, name2|

# all arguments are passed as strings, if you wnat to multiply it for example
# you need to convert to integer before using: .to_i

# but in cucumber you can use a transform too

# Transform(/\d+/) do |raw_number|
#   raw_number.to_i
# end

Given /^(\w+) (?:is|is standing) (\d+) metres? from (\w+)$/ do |name1, distance, name2|
  puts "#{name1.class} is #{distance.class} away from #{name2.class}"
end
# Given(/^Lucy is (\d+)m from Sean$/) do |distance|
#   @lucy = Person.new
#   @sean = Person.new
#   @lucy.move_to(distance)
# end

# When(/^Sean shouts "(.*?)"$/) do |message|
#   @sean.shout(message)
#   @message_from_sean = message
# end

# Then(/^Lucy hears Sean's message$/) do
#   expect(@lucy.messages_heard).to include(@message_from_sean)
# end

# Then(/^Lucy can't hear Sean's message$/) do
#   expect(@lucy.messages_heard).not_to include(@message_from_sean)
# end
