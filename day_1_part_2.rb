puts "Enter filename"

filename = gets.chomp

f = File.open(filename, "r")

santa_position = 0

f.each_char.with_index do |c, i|

  if c == '('
    puts santa_position += 1
  else
    puts santa_position -= 1
  end

  if santa_position == -1
    santa_in_basement = i +1
    puts "SANTA IN BASEMENT!!! position: #{santa_in_basement}"
    break
  end

end

f.close

