class BloodOath
    attr_reader :initiation_date, :follower, :cult

    @@all = []

    def initialize(init_date, follower, cult)
        @initiation_date = init_date
        @follower = follower
        @cult = cult
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all[0].follower
    end
end