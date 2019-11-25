class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all #returns array of all follower objects
        @@all
    end

    def oath #returns an array of all this followers bloodoaths
        BloodOath.all.select{|oath| oath.follower == self}
    end
    
    def cults # returns an array of all this followers cults
       oath.map {|oath| oath.cult}.uniq
    end

    def join_cult(cult) #takes a cult instance & adds this follower to cults list of followers
      cultnew = Cult.new(self, name, location, founding_year, slogan)
    end

    def self.of_a_certain_age(age) #returns array of followers this age or above
       self.all.select{|follower| follower.age >= self.age}
    end



end