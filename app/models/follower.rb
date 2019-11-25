class Follower
    attr_reader :name
    attr_accessor :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all.push(self)
    end

    def self.all
        @@all
    end

    # Return all followers who are older than given age
    def self.of_a_certain_age(num)
        Follower.all.select{|follower| follower.age >= num}
    end

    # Return Array of follower instance Cults
    def cults
        BloodOath.all.select{|bo| bo.follower == self}
    end

    # Create new BloodOath instance and join cult
    def join_cult(cult, initiation_date)
        BloodOath.new(initiation_date, cult, self)
    end
end