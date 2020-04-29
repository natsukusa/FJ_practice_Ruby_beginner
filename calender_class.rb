require 'date'
require 'optparse'

class Calender
  def initialize
    @this_year = Time.now.year
    @this_month = Time.now.month
    @params = ARGV.getopts("m:y:")
  end
  def display_calender
    puts header.center(20)
    puts week_labels.join(" ")
    puts dates.each_slice(7) {|n| puts n.join(" ")}
  end

  private
  def order_year
    @params["y"].to_i > 0 ? @params["y"].to_i : false
  end
  def order_month
    @params["m"].to_i > 0 && @params["m"].to_i <= 12 ? @params["m"].to_i : false
  end
  def set_year
    order_year ? order_year : @this_year
  end
  def set_month
    order_month ? order_month : @this_month
  end
  def last_day
    Date.new(set_year, set_month, -1).day
  end
  def week_of_firstday
    Date.new(set_year, set_month).wday
  end
  def header
    "#{set_month}月 #{set_year}" 
  end
  def week_labels
    ["日", "月", "火", "水", "木", "金", "土"]
  end
  def dates
    Array.new(week_of_firstday, "  ") + (" 1".." 9").to_a + ("10".."#{last_day}").to_a
  end
end

calender = Calender.new
calender.display_calender
