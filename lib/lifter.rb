class Lifter
  attr_reader :name, :lift_total
  @@all =[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end


# Get a list of all lifters

def self.all
  @@all
end

# Get a list of all the memberships that a specific lifter has
def lifter_membership
  Membership.all.select {|membership| membership.lifter == self}
end

# Get a list of all the gyms that a specific lifter has memberships to
  def all_gyms
    lifter_membership.map {|lifter| lifter.gym}
  end
# Get the average lift total of all lifters
  def self.average_lift_total
   all_lifters = self.all.count{ |lifter| lifter.lift_total}
    #self.all.map {|lifter| lifter.lift_total}
    self.all.reduce(0){ |total, lifttot| 
         total + lifttot.lift_total}/ all_lifters
  end

# Get the total cost of a specific lifter's gym memberships
  def total_cost
    lifter_membership.reduce(0){ |total, pay| 
         total + pay.cost}
  end

# Given a gym and a membership cost, sign a specific lifter up for a new gym
  def gym_signup(gym, cost)
    Membership.new(gym, cost, self)
  end

end