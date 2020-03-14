
FESTIVAL_NUM = 'FESTIVAL'.length

# target string
str = STDIN.gets

str.slice!(str.length-FESTIVAL_NUM-1, FESTIVAL_NUM)

puts str