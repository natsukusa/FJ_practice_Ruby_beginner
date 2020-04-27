require 'date'
require 'optparse'

this_year = Time.now.year
this_month = Time.now.month

params = ARGV.getopts("m:y:")
order_year = params["y"].to_i > 0 ? params["y"].to_i : false
order_month = params["m"].to_i > 0 && params["m"].to_i <= 12 ? params["m"].to_i : false

set_year = order_year ? order_year : this_year
set_month = order_month ? order_month : this_month

last_day = Date.new(set_year, set_month, -1).day
week_of_firstday = Date.new(set_year, set_month).wday

header = "#{set_month}月 #{set_year}" 
week_labels = ["日", "月", "火", "水", "木", "金", "土"]

dates = Array.new(week_of_firstday, "  ") + [*" 1".." 9"] + [*"10".."#{last_day}"]
# dates = Array.new(week_of_firstday, "  ") + (" 1".." 9").to_a + ("10".."#{last_day}").to_a

puts header.center(20)
puts week_labels.join(" ")

puts dates.each_slice(7) {|n| puts n.join(" ")}

# 6.times{ puts dates.slice!(0, 7).join(" ") }



