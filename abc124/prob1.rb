
first_line = STDIN.gets.strip

buttons = first_line.split(' ').map(&:to_i)
total = 0

2.times do |_i|
  v = 0
  if buttons[0] >= buttons[1] then
    v = buttons[0]
    buttons[0] = buttons[0] - 1
  else
    v = buttons[1]
    buttons[1] = buttons[1] - 1
  end
  total += v
end

puts total






