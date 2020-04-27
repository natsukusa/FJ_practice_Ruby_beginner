class Drink
  # def name=(text)
  #   @name = text
  # end
  # def name
  #   @name
  # end
  attr_accessor :name
end

drink = Drink.new
drink.name = "カフェラテ"
puts drink.name
