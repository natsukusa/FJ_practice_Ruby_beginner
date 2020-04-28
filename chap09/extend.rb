module Greeting
  def welcome
    "いらっしゃいませ"
  end
end
class Cafe
  extend Greeting
  include Greeting
  def aisatu
    puts welcome + " 今日もいい天気ですね"
  end
end

# include で、インスタンスメソッド
open = Cafe.new
open.aisatu

# extend で、クラスメソッド
puts Cafe.welcome
