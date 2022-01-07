
# a function that returns the number of times a number is increased
# you will be givin input from `input.txt`

file = File.open('input_p1.txt')
input = file.read
prev = input.split.first.to_i

count = 0
input.each_line do |line|
  num = line.strip.to_i

  if num > prev
    count += 1
    puts count
  end

  prev = num
end
p count
