
first_line_arr = STDIN.gets.strip.split(' ').map(&:to_i)
A = first_line_arr[0]
B = first_line_arr[1]
T = first_line_arr[2]

num = T/A*B
puts num

