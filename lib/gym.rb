class Gym
  attr_reader :name
  
  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end

# Get a list of all memberships at a specific gym
def all_memberships
  Membership.all.select {|membership| membership.gym == self}
end

# Get a list of all the lifters that have a membership to a specific gym
  def all_lifters
    all_memberships.map {|lifters| lifters.lifter}
  end
# Get a list of the names of all lifters that have a membership to that gym
  def members_list
    all_lifters.map {|lifters| lifters.name}
  end
# Get the combined lift total of every lifter has a membership to that gym
  def lift_total
    all_lifters.reduce(0){ |total, lifttot| 
         total + lifttot.lift_total}
  end

end