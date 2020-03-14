_first_line = STDIN.gets
gem_values = STDIN.gets.strip.split(' ').map(&:to_i)
costs = STDIN.gets.strip.split(' ').map(&:to_i)

diff_sum = 0
gem_values.each_with_index do |value, idx|
  cost = costs[idx]
  diff = value - cost
  diff_sum = diff_sum + value - cost if diff > 0
end

puts diff_sum
