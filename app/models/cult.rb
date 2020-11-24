class Cult 
    attr_reader :name, :founding_year
    attr_accessor :location, :slogan

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

    def recruit_follower(follower)
        # given argument of follower instance, adds them to this cults list of followers
        BloodOath.new(Time.now.strftime("%F"), follower, self)
    end

    def follower_oaths
        BloodOath.all.select{|oath| oath.cult == self}
    end

    def cult_population
        # returns an int which is number of followers
        self.follower_oaths.count
    end

    def average_age
        sum = self.follower_oaths.sum{|oath| oath.follower.age}
        sum / self.cult_population.to_f
    end
    
    def my_followers_mottos
        self.follower_oaths.map{|oath| oath.follower.life_motto}
    end

    def self.least_popular
        self.all.min {|cult| cult.cult_population}
    end

    def self.most_common_location
        # return the string that is the location with the most cults
        # gets the locations of each cult
        locations = self.all.map{|cult| cult.location}
        hash = {}
        # create hash and add location counter 
        locations.each {|location| hash[location]? hash[location] += 1 : hash[location] = 1 }
        # gets max value from hash and returns the key
        hash.max_by{|k, v| v}[0]
    end

    def self.find_by_name(name)
        # given a name(string) returns a cult instance with that name
        self.all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        # given a location(string) returns an array of cults that are in that location
        self.all.select{|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        #given a founding year(int) returns all cults founded that year
        self.all.select{|cult| cult.founding_year == year}
    end

end