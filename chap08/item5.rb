class Item
  attr_accessor :name
  def full_name
    @name
  end
end

class Drink < Item
  attr_accessor :size
  def full_name
    "#{super} #{@size}サイズ"
  end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name
