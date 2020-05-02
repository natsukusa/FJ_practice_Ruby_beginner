def type(age)
  if age < 0
    raise "年齢がマイナスです(#{age}才)"
  elsif age < 20
    "未成年"  
  else
    "成年"
  end
end

begin
  age = ARGV.first.to_i
  puts "#{age}才は#{type(age)}です"
rescue => e
  puts "例外が発生しました：#{e.message}"
ensure
  puts "ご利用ありがとうございました"
end
