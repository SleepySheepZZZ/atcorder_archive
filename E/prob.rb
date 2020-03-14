require 'set'

# 検索用
def searchFirstIs(first_char, word_set)
  answer_set = Set.new
  word_set.each do |word|

    if (word[0] == first_char)
      answer_set << word[1]
    end
  end
  answer_set
end

def searchLastIs(last_char, word_set)
  answer_set = Set.new
  word_set.each do |word|
    if (word[1] == last_char)
      answer_set << word[0]
    end
  end
  answer_set
end



# 何回繰り返すか
n = STDIN.gets.to_i

word_set = Set.new

(1..n).each do |num|
  word = STDIN.gets
  word_set.add(word)
end

# 1個目
nextLine =  STDIN.gets.split('') # 漢字
char_one = nextLine[2]

nextLine =  STDIN.gets.split('') # 矢印
first_set = nil # 候補の漢字群その1
if (nextLine[2]=='↑')
  # ◯連
  first_set = searchLastIs(char_one, word_set)
elsif(nextLine[2]=='↓')
  # 連◯
  first_set = searchFirstIs(char_one, word_set)
end

# 2,3こめ
nextLine =  STDIN.gets.split('') # 漢字と矢印
char_second = nextLine[0]
char_third = nextLine[4]

# 2こめを探す
second_set = nil # 候補の漢字群その2
if (nextLine[1]=='←')
  # ◯連
  second_set = searchLastIs(char_second, word_set)
elsif(nextLine[1]=='→')
  # 連◯
  second_set = searchFirstIs(char_second, word_set)
end

# 3こめを探す
third_set = nil # 候補の漢字群その2
if (nextLine[3]=='→')
  # ◯連
  third_set = searchLastIs(char_third, word_set)
elsif(nextLine[3]=='←')
  # 連◯
  third_set = searchFirstIs(char_third, word_set)
end

# 4個目
nextLine =  STDIN.gets.split('') # 矢印
arrow = nextLine[2]

nextLine =  STDIN.gets.split('') # 漢字
char_four = nextLine[2]

forth_set = nil # 候補の漢字群その4
if (arrow == '↓')
  # ◯連
  forth_set = searchLastIs(char_four, word_set)
elsif(arrow == '↑')
  # 連◯
  forth_set = searchFirstIs(char_four, word_set)
end

# 積をとる
final_set =  first_set & second_set & third_set & forth_set
puts final_set.to_a
