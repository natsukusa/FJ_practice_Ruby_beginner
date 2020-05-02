def foo(a, &b)
  puts a
  p b.class
end

foo("a") do
  puts "Chunky bacon!!"
end
