require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("culty cult", "nowhere", 1990, "Theres only one rule about culty cult")
c2 = Cult.new("Pry Till I Die", "Command Line", 1666, "Keep it Pry to get High")
c3 = Cult.new("Why Pry", "Command Line", 1999, "Dont Pry, just smile")

f1 = Follower.new("Luke", 24, "Get shit done.")
f2 = Follower.new("Dave", 60, "Just do it.")
f3 = Follower.new("Bill", 35, "Why me?")
f4 = Follower.new("Jack", 14, "May the odds be ever in your favor.")
f5 = Follower.new("Drew", 29, "Get money.")
f6 = Follower.new("D", 29, "Get money.")
f7 = Follower.new("r", 29, "Get money.")
f8 = Follower.new("w", 29, "Get money.")
f9 = Follower.new("x", 29, "Get money.")
f10 = Follower.new("y", 29, "Get money.")
f11 = Follower.new("z", 29, "Get money.")
f12 = Follower.new("l", 29, "Get money.")


c2.recruit_follower(f1)
c2.recruit_follower(f4)
c2.recruit_follower(f2)
c2.recruit_follower(f3)
c2.recruit_follower(f5)
c2.recruit_follower(f6)
c2.recruit_follower(f7)
c2.recruit_follower(f8)
c2.recruit_follower(f11)
c2.recruit_follower(f12)



c1.recruit_follower(f1)
c1.recruit_follower(f4)
c1.recruit_follower(f2)
c1.recruit_follower(f3)
c1.recruit_follower(f5)
c1.recruit_follower(f6)
c1.recruit_follower(f7)
c1.recruit_follower(f8)
c1.recruit_follower(f11)
c1.recruit_follower(f12)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits