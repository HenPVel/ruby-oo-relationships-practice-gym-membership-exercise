class Lifter
  attr_reader :name, :lift_total

  @@all=[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

    def self.all
      @@all
    end

  def memberships_of_lifter
    Membership.all.select{|mem|mem.lifter==self}
  end

  def gyms
    memberships_of_lifter.map { |mem|mem.gym } 
  end

  def self.average_lift_total
    Lifter.all.map{|person|person.lift_total}.reduce(0){|sum,num|sum+num}/(Lifter.all.count)
  end

  def total_costs_for_memberships
    memberships_of_lifter.map{ |mem| mem.cost }.reduce(0){|sum,num| sum+num} 
  end

  def gym_sign_up(gym,membership_cost)
    #initialize(lifter,gym,cost,type)
    Membership.new(self,gym,membership_cost,"All Club-All Time")
  end


  
end
