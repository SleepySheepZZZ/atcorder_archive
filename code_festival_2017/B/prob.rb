NUM_OF_IDEAS = STDIN.gets.to_i
ideas_difficulties = STDIN.gets.split(' ').map(&:to_i).sort!
NUM_OF_PROBS = STDIN.gets.to_i
target_difficulties = STDIN.gets.split(' ').map(&:to_i).sort!

def arrange_probs (ideas, targets)
  prev_target = nil

  targets.each do |target|
#    puts 'target= ' + target.to_s
#    puts 'prev_target= ' + prev_target.to_s
#    puts 'ideas= ' + ideas.to_s

    if prev_target && target > prev_target
#      puts 'delete all target from idea'
      ideas.delete(prev_target)
    end

    candidate_idx = ideas.index(target)
    if candidate_idx
      # delete from ideas
      ideas.delete_at(candidate_idx)
    else
      return 'NO'
    end

    prev_target = target
  end
  return 'YES'
end

puts arrange_probs(ideas_difficulties, target_difficulties)