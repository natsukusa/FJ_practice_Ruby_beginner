class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
  def name
    @name
  end
end

drink1 = Drink.new
drink1.order("カフェラテ")
puts drink1.name
