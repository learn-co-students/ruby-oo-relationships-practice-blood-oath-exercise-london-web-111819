require_relative '../config/environment.rb'
require_relative '../app/models/bloodoath.rb'
require_relative '../app/models/cult.rb'
require_relative '../app/models/follower.rb'

cult1 = Cult.new('Cult1', 'London', 2011, "Slogan1")
cult2 = Cult.new('Cult2', 'Moscow', 2012, 'Slogan2')
cult3 = Cult.new('Cult2', 'Moscow', 2012, 'Slogan2')

follower1 = Follower.new('Name1', 22, 'Motto1')
follower2 = Follower.new('Name2', 24, 'Motto2')

follower3 = Follower.new('Name3', 26, 'Motto3')
follower4 = Follower.new('Name4', 30, 'Motto4')


bo1 = BloodOath.new(cult1, follower1, '23/04/1997')
bo2 = BloodOath.new(cult1, follower2, '23/04/1997')

bo3 = BloodOath.new(cult2, follower3, '23/04/1997')
bo4 = BloodOath.new(cult2, follower4, '23/04/1997')



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
