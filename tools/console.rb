require_relative '../config/environment.rb'
require_relative '../app/models/bloodoath.rb'
require_relative '../app/models/cult.rb'
require_relative '../app/models/follower.rb'

cult1 = Cult.new('Cult1', 'Location1', 2011, 'Slogan1')
cult2 = Cult.new('Cult2', 'Location2', 2012, 'Slogan2')
cult3 = Cult.new('Cult3', 'Location3', 2013, 'Slogan3')


follower1 = Follower.new('Follower1', 11, 'Motto1')
follower2 = Follower.new('Follower2', 12, 'Motto2')
follower3 = Follower.new('Follower3', 13, 'Motto3')
follower4 = Follower.new('Follower4', 14, 'Motto4')
follower5 = Follower.new('Follower5', 15, 'Motto5')


bo1 = BloodOath.new('12/20/2011', cult1, follower1)
bo2 = BloodOath.new('12/20/2012', cult2, follower2)
bo3 = BloodOath.new('12/20/2013', cult3, follower3)
bo4 = BloodOath.new('12/20/2014', cult1, follower4)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
