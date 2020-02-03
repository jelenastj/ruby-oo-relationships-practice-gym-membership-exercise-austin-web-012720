class Membership
  attr_reader :gym, :lifter, :cost
  @@all = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end

#Get a list of all memberships
  def self.all
    @@all
  end

end
