def cat(filename)
  File.open(filename) do |file|
    file.each_line {|line| puts line}
  end
rescue SystemCallError => e
  puts "---例外が発生しました---"
  puts "例外クラス：#{e.class}"
  puts "例外メッセージ：#{e.message}"
end

filename = ARGV.first
cat(filename)
