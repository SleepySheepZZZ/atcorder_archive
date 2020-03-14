
N = STDIN.gets.to_i
As = STDIN.gets.split(' ').map(&:to_i).sort
Bs = STDIN.gets.split(' ').map(&:to_i).sort
Cs = STDIN.gets.split(' ').map(&:to_i).sort

result = 0

Bs.each do |b|

  # count candidates from A based on selected B
  a_ng_min_index = As.bsearch_index { |a| a >= b }
  a_candidates = a_ng_min_index ? a_ng_min_index : As.length

  # count candidates from C based on selected B
  c_ok_min_index = Cs.bsearch_index { |c| c > b }
  c_candidates = c_ok_min_index ? Cs.length - c_ok_min_index : 0

  result += a_candidates * c_candidates

end

puts result