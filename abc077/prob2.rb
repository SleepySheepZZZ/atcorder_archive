
input = STDIN.gets.to_i

def seek_max_int_sqrt(target)
  target.step(1, -1) do |t|
    result = Math.sqrt(t)
    result_int = result.to_i

    if result == result_int
      return result_int
    end
  end
end

puts seek_max_int_sqrt(input)**2

