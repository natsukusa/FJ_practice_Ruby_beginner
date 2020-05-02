def type(age)
  if age < 0
    raise "年齢がマイナスです(#{age}才)"
  elsif age < 20
    "未成年"  
  else
    "成年"
  end
end

age = ARGV.first.to_i
type = type(age)
puts "#{age}才は#{type}です"
