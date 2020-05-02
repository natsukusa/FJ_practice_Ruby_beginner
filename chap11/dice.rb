def dice
  if block_given?
    puts "run block"
    yield
  else
    puts "normal dice"
    puts [1, 2, 3, 4, 5, 6].sample
  end
end

dice

dice do
  puts [4, 5, 6].sample
end
