s, t = $<.map {|str| str.chomp.reverse }
 
begin
  s[/#{t.gsub /./, '[?\0]'}/] = t
  s = s.tr(??, ?a).reverse
rescue
  s = 'UNRESTORABLE'
end
 
puts s
