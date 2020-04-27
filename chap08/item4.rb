class Item
  attr_accessor :name
end
def full_name
  @name
end

class Drink < Item
  attr_accessor :size
  def full_name
    "#{@name} #{@size}サイズ"
  end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name
