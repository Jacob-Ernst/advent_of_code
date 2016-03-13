puts "Enter filename"

filename = gets.chomp

f = File.open(filename, "r")

file_string = f.read

santa_up = file_string.scan(/\(/).count

santa_down = file_string.scan(/\)/).count

number_of_floors = santa_up - santa_down

puts "Santa is on floor #{number_of_floors}"

f.close
