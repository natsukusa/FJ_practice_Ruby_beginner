class Cafe
  def self.welcome
    "いらっしゃいませ! \n"
  end
  def self.welcome_again
    welcome + "いつもありがとうございます！"
  end
end

puts Cafe.welcome_again
