
# loop number
N = STDIN.gets.to_i

# this number will be used when decided to plus
K = STDIN.gets.to_i

# target number is 1 at first
displayed_number = 1

N.times do |_n|
  if displayed_number <= K
    displayed_number *= 2
  else
    displayed_number += K
  end
end

puts displayed_number
