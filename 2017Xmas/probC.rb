puts 'increment numbers'

a = 4 # given number
b = 1 # increment stride

i = a & 1 # 1st: 2^0
j = a & 2 # 2nd: 2^1
k = a & 4 # 3rd: 2^2
l = a & 8 # 4th: 2^3
m = a & 16 # 5th: 2^4
n = a & 32 # 6th: 2^5
o = a & 64 # 7th: 2^6
p = a & 128 # 8th: 2^7

puts "#{p}#{o}#{n}#{m}#{l}#{k}#{j}#{i}"

c = 0 # carry
s = 0 # sum

c = a & b
s = a ^ b

puts "carry is #{c}"
puts "sum is #{s}"
