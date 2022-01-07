# frozen_string_literal: true

# a method that returns the number of times a number is increased
# you will be givin input from `input.txt`

file = File.open('input.txt')
input = file.read
prev = input.split.first.to_i

count = 0
input.each_line do |line|
  num = line.to_i
  num > prev ? count += 1 : 'Merry Ambiguous Holiday'
  prev = num
end

puts "#{count} times increased"
