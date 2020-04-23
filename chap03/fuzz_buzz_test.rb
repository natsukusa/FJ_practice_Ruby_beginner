(30+1).times do |i|
  if i > 0
    case
    when
      i % 3 == 0 && i % 5 == 0
      puts "FuzzBuzz"
    when
      i % 5 == 0
      puts "Fuzz"
    when
      i % 3 == 0
      puts "Buzz"
    else
      puts i
    end
  end
end