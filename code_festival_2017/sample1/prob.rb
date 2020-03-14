answer = ''

# first number
a = STDIN.gets.to_i

# second and third numbers
b_and_c = STDIN.gets.split(' ')

answer << (a + b_and_c[0].to_i + b_and_c[1].to_i).to_s

# last string
answer << ' ' + STDIN.gets

puts answer