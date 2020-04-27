class Item
  attr_accessor :name
end
class Drink < Item
  def size
    @size
  end
  def size=(text)
    @size = text
  end
end

item = Item.new
item.name = "マフィン"

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts "#{drink.name} #{drink.size}サイズ"
puts "追加で、#{item.name}"
