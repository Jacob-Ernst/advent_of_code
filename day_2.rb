puts "Enter filename"

filename = gets.chomp

f = File.open(filename, "r")

present_total_surface_area = 0


f.each_line do |line|
  present_dimensions_array = line.chomp.split('x')

  l, w, h = present_dimensions_array[0].to_i, present_dimensions_array[1].to_i, present_dimensions_array[2].to_i

  side_1, side_2, side_3 = (l*w), (w*h), (h*l)

  array_for_sorting = [side_1, side_2, side_3]

  sorted_array = array_for_sorting.sort
  smallest_dimension = sorted_array[0]

  present_surface_area = (2*l*w) + (2*w*h) + (2*h*l) + smallest_dimension

  present_total_surface_area += present_surface_area
  print present_surface_area.to_s + "\n"

end

print "The elves need #{present_total_surface_area}sqft of wrapping paper! Go get the freaking paper"

f.close
