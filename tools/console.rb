# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Jimmy", 10)
lifter2 = Lifter.new("Steve", 20)
lifter3 = Lifter.new("Bob", 30)

gym1 = Gym.new("crushit")
gym2 = Gym.new("noway")
gym3 = Gym.new("lol")
gym4 = Gym.new("getup")

membership1 = Membership.new(10, gym1,lifter1)
membership2 = Membership.new(20, gym1, lifter2)
membership3 = Membership.new(30, gym3, lifter3)
membership4 = Membership.new(40, gym4, lifter2)



binding.pry

puts "Gains!"
