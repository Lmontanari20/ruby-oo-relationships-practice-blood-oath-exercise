class Follower
    attr_reader :name, :age
    attr_accessor :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all 
        @@all
    end

    def oaths 
        BloodOath.all.select{|oath| oath.follower == self}
    end
    
    def cults
        self.oaths.map{|oath| oath.cult}
    end

    def cult_count
        self.cults.count
    end

    def join_cult(cult)
        # given cult instance, adds this follower to cult list
        BloodOath.new(Time.now.strftime("%F"), self, cult)
    end

    def my_cult_slogans
        self.cults.map{|cult| cult.slogan}
    end

    def self.most_active
        # better solution: make a most_active(num) funx
        # return max_by(num) corresponding to how many top followers you want
        self.all.max_by{|follower| follower.cult_count}
    end

    def self.top_ten
        # get all followers, create result array, if max follower isnt in result array, add it, do ten time
        followers = self.all
        result = []
        10.times {
            m_active = followers.max_by{|follower| follower.cult_count}
            result << m_active
            followers.delete(m_active)
        }
        result
    end

    def self.of_a_certain_age(age)
        # takes in age(integer) returns an array of followers who are >= age
        self.all.select{|follower| follower.age >= age}
    end
end