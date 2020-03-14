
# 何回繰り返すか
n = STDIN.gets.to_i

# 答えの文字列
answer = ''

(1..n).each do |num|

  # P, Q, R のセット
  set = STDIN.gets.split(' ')

  p = set[0]
  r = set[2]

  if (p == 'BEGINNING')
    # 最初一文字
    answer << r.split('').first
  elsif (p == 'MIDDLE')
    # 真ん中一文字
    chars = r.split('')
    answer << chars[chars.length/2]
  elsif (p == 'END')
    # 最後一文字
    answer << r.split('').last
  end
end

puts answer
