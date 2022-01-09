# frozen_string_literal: true

input = []
file = File.open('input.txt')
file.read.each_line { |line| input << line.strip }

pos = 0
gamma = ''
epsilon = ''
until pos == input[0].size
  yee = 0 # 1 bit
  haw = 0 # 0 bit

  input.each do |str|
    str[pos] == '1' ? yee += 1 : haw += 1
  end

  if yee > haw
    gamma.concat('1')
    epsilon.concat('0')
  elsif yee < haw
    gamma.concat('0')
    epsilon.concat('1')
  end
  pos += 1
end

class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary.match?(/[^01]/)

    binary.reverse.chars.map.with_index do |digit, index|
      digit.to_i * 2**index
    end.sum
  end
end

puts "#{Binary.to_decimal(gamma)} X #{Binary.to_decimal(epsilon)} = #{Binary.to_decimal(gamma) * Binary.to_decimal(epsilon)}"
