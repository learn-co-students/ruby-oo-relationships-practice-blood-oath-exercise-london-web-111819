class Cult
    attr_reader :founding_year
    attr_accessor :name, :location, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all.push(self)
    end

    def self.all
        @@all
    end

    # Find Cult instance by name
    def self.find_by_name(target)
        Cult.all.select{|cult| cult.name == target}
    end

    # Find Cult instance by location
    def self.find_by_location(target)
        Cult.all.select{|cult| cult.location == target}
    end

    # Find Cult instance by the founding year   
    def self.find_by_founding_year(target)
        Cult.all.select{|cult| cult.founding_year == target}
    end

    # Recruit a follower to Cult instance
    def recruit_follower(follower, initiation_date)
        BloodOath.new(initiation_date, self, follower)
    end

    # Find quantity of members in a Cult instance
    def cult_population
        BloodOath.all.select{|bo| bo.cult == self}.length
    end
end