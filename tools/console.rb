require_relative '../config/environment.rb'
# require_relative 'app/models/bloodoath'
# require_relative 'app/models/cult'
# require_relative 'app/models/follower'
# require 'pry'
def reload
 load 'config/environment.rb'
end

follower1 = Follower.new("john", 32, "free-life")
follower2 = Follower.new("abby", 54, "YOLO!")
follower3 = Follower.new("dawn", 22, "Ditch the biscuits")

cult1 = Cult.new("smilers", "kent", 2019, "awesomeness personified")
cult2 = Cult.new("deviants", "rome", 1066, "creatively suspicious")
cult3 = Cult.new("anarchists", "teds bedroom", 2005, "striving for excellence")

bloodoath1 = BloodOath.new(cult1, follower3, "2012-12-12")
bloodoath2 = BloodOath.new(cult3, follower3, "2008-05-05")
bloodoath3 = BloodOath.new(cult2, follower1, "2007-02-03")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
