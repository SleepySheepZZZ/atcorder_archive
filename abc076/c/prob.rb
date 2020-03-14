
WORM_EATEN_S = STDIN.gets.strip!
HINT = STDIN.gets.strip!
candidates = []

def apply_hint(given_str, start, hint)

  if start + hint.length > given_str.length
    return ''
  end

  applied = Marshal.load(Marshal.dump(given_str))

  (0..hint.length-1).each do |idx|
    target_char = given_str[start+idx]

    unless ( target_char == '?' || target_char == hint[idx] )
      return ''
    end

    applied[start+idx] = hint[idx]
  end

  return applied
end

# gather candidate strings
result = ''
(0..WORM_EATEN_S.length-1).each do |idx|
  result = apply_hint(WORM_EATEN_S.dup, idx, HINT)
  candidates.push(result.gsub(/\?/, 'a')) if result != ''
end

# print the result
if candidates.length == 0
  puts 'UNRESTORABLE'
else
  puts candidates.min
end
