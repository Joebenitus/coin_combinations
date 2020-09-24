#!/usr/bin/env ruby
require('./coin_combinations')
puts 'Enter an amount of cents'
input = gets.chomp
puts "You entered #{input} cents."
newconversion = Change.new(input)
newconversion.get_change
puts "You'd have: #{newconversion.coins}"