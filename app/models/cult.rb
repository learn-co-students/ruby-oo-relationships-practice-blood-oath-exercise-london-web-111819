class Cult
attr_accessor :name, :location, :founding_year, :slogan

@@all = []

def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
end

def self.all
    @@all
end

def recruit_follower(follower) #takes Follower instance and add them to this cults list of followers
    followernew = Follower.new(self, name, age, life_motto)
end

def oath
    BloodOath.all.select {|oath| oath.cult == self}
end

def cult_population #returns a fixnum that is number of followers in this cult
  oath.map {|oath| oath.followers}.length
end

def self.find_by_name(name) #returns a `Cult` instance whose name matches that argument
self.all.find {|cult| cult.name == name}
end

def self.find_by_location(location)#rtrns an array of cults in given location
    self.all.select {|cult| cult.location == location}.uniq
end

def self.find_by_founding_year(year) #rtrns all cults found in given year
   self.all.select {|cult| cult.year == year}.uniq
end

def average_age

   
end

def my_followers_mottos
  oath.map {|oath| oath.followers.life_motto}.to_s
end

def self.least_popular
    self.oath.find {|oath| oath.followers.length.sort.first}
end

# `Cult#average_age`
#   * returns a `Float` that is the average age of this cult's followers


# * `Cult.most_common_location`
#   * returns a `String` that is the location with the most cults

end