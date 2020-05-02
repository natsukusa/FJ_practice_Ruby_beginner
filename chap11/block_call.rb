def foo(&b)
  b.call
end

foo do
  puts "Chunky bacon!!"
end
