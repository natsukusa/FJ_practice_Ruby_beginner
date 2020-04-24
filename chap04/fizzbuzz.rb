(1..100).each do |i|
  case
  when i % 3 == 0 && i % 5 == 0
    puts "FizzBuzz"
  when i % 5 == 0
    puts "Buzz"
  when i % 3 == 0
    puts "Fizz"
  else
    puts i
  end
end