def gcd(a, b)
  gcd(b, a) if b > a
  return b if (r = a % b).zero?
  gcd(b, r)
end

N = STDIN.gets.strip.to_i
nums = STDIN.gets.strip.split(' ').map(&:to_i)
heads = Array.new(nums.length)
tails = Array.new(nums.length)

N.times do |idx|
  if idx == 0
    # head
    heads[idx] = 0
    # tail
    tails[N-1] = 0
  elsif idx == 1
    # head
    heads[idx] = nums[idx-1]
    # tail
    tails[N-2] = nums[N-1]
  elsif idx == 2
    # head
    heads[idx] = gcd(nums[idx-2], nums[idx-1])
    # tail
    tails[N-3] = gcd(nums[N-1], nums[N-2])
  else
    # head
    heads[idx] = gcd(heads[idx-1], nums[idx-1])
    # tail
    tails[N-idx-1] = gcd(tails[N-idx], nums[N-idx])
  end
end

max = 0
N.times do |idx|
  candidate = 0
  if idx == 0
    candidate = tails[idx]
  elsif idx == N-1
    candidate = heads[idx]
  else
    candidate = gcd(heads[idx], tails[idx])
  end

  max = candidate if candidate > max
end

puts max


