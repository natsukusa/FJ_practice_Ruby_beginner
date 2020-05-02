class Drink 
  def name
    @name = "カフェラテ"
  end
  def self.name
    @name
  end
end

drink = Drink.new
drink.name
p drink.name
p Drink.name
