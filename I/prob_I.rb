# 何回繰り返すか
n = STDIN.gets.to_i

# 答えの文字列
answer = ''

monica = 'monica'.split('')

# 探索用(配列)
search_line = []
# 参照用(配列)
read_line = []

# 入れとく
search_line = STDIN.gets.split('')
(1...n).each do |line_num|
  # 参照用は常に読み込み
  read_line = STDIN.gets.split('')
  (1..n).each do |char_num|
    target_char = search_line[char_num-1]
    if (monica.include?(target_char))
      answer << read_line[char_num-1]
    end
  end
  # 次の探索行は今の参照行
  search_line = read_line
end

puts answer
