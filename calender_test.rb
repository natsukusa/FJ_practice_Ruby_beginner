# 例：ruby test.rb -ab -m 3 -y 2000 で起動した時

p ARGV # ARGVにはコマンドライン引数が配列として入っている。

require 'optparse'
opt = OptionParser.new

params = {} # 空のハッシュを作成して、opt.parse時に代入

opt.on('-m [VAL]') {|v| params[:m] = v.to_i }
opt.on('-y [VAL]') {|v| params[:y] = v.to_i }
opt.on("-a") {|v| params[:a] = v}
opt.on("-b") {|v| params[:b] = v}
opt.on("-c") {|v| params[:c] = v}

opt.parse(ARGV) # opt.on の設定に従いARGVを解析・展開する

p params
p params[:m] # => 3
p params[:c] # => nil

# 上と同じ事を少ないコードで書ける。
require 'optparse'
params = ARGV.getopts("m:y:abc")
p params["m"] # => "3"
p params["c"] # => false
