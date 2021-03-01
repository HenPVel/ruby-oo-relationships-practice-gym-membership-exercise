class Membership
  attr_reader :cost, :lifter, :gym, :type


@@all=[]

  def initialize(lifter,gym,cost,type)
    @cost = cost
    @gym=gym
    @lifter=lifter
    @type=type
    @@all << self
  end

  def self.all
    @@all
  end

end
