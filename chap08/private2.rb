class Cafe
  def staff
    makanai
  end
  private
  def makanai
    "店員用メニュー"
  end
end

cafe = Cafe.new
# puts cafe.makanai  # エラーになる
puts cafe.staff