# frozen_string_literal: true

# returns new x, y with aim coordinates after direction
# directions are givin as forward, down or up and a number. ie: 'forward 7'

input = []
file = File.open('input.txt')
file.read.each_line { |line| input << line.strip }

coordinates = [0, 0, 0] # [x, y, aim]
input.each do |cmd|
  direction = cmd.split.first
  num = cmd.split.last.to_i

  case direction
  when 'forward'
    coordinates[0] += num
    coordinates[1] += coordinates[2] * num
  when 'down' then coordinates[2] += num
  when 'up' then coordinates[2] -= num
  end
end

puts "new coordinates: #{coordinates[0]}, #{coordinates[1]} = #{coordinates[0] * coordinates[1]}"
