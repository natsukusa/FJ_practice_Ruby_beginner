class Drink
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("coffee")
puts drink.name
