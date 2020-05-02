def warikan (bill, number)
  warikan = bill / number
  puts "一人当たり#{warikan}円です"
rescue
  puts "０人では割り勘できません"
end

warikan(100,0)
warikan(100,1)
warikan(100,2)
