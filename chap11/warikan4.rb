bill = 100
numbers = [0, 1, 2]

numbers.each do |number|
  warikan = bill / number
  puts "一人当たり#{warikan}円です"
rescue
  puts "０人では割り勘できません"
end
