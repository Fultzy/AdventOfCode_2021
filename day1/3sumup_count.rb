
# a functions that compares the sum of 3 values at a time per element
# oerlapping elements, values givin by `input.txt`

input = []
file = File.open('input.txt')
file.read.each_line { |line| input << line.to_i }
prev = input[0..2].reduce(:+)
i = 0
count = 0

until i == input.size - 2
  sum = input[i..i+2].reduce(:+)
  sum > prev ? count += 1 : "Merry Ambiguous Holiday"
  prev = sum
  i += 1
end

puts "#{count} times increased"
