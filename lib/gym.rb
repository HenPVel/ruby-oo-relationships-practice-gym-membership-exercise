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

  def all_memberships_at_specific_gym
    Membership.all.select{|mem|mem.gym==self}
  end

  def lifters_that_have_membership_at_gym
    all_memberships_at_specific_gym.map{|mem|mem.lifter}
  end

  def list_of_names_of_all_members_of_gym
    all_memberships_at_specific_gym.map{|mem|mem.lifter.name}
  end

  def combined_lift_total_at_gym
    all_memberships_at_specific_gym.map{|mem|mem.lifter.lift_total}.reduce(0){|sum,num|sum+num}
  end



end
