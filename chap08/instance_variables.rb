class Drink
  def order(text)
    @name = text
  end
end

drink = Drink.new
drink.order("カフェラテ")
p drink.instance_variables
