# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#value is max lift in pounds
frankie_magic=Lifter.new("Frankie Magic",340)
ryan_garcia=Lifter.new("Ryan Garcia",290)
henry_velasquez=Lifter.new("Henry Velasquez",450)
clark_kent=Lifter.new("Clark Kent",100000)

la_fitness=Gym.new("LA Fitness")
ufc_gym=Gym.new("UFC Gym")
equinox=Gym.new("Equinox")
planet_fitness=Gym.new("Planet Fitness")

#all membership fees are $/month
frankie_weekend=Membership.new(frankie_magic,ufc_gym,25,"Weekender")
ryan_weekday=Membership.new(ryan_garcia,la_fitness,40,"Weekday")
henry_all_access=Membership.new(henry_velasquez,equinox,55,"All Time")
clark_traveling=Membership.new(clark_kent,planet_fitness,100,"All Club - All Time")
ryan_weekender=Membership.new(ryan_garcia,equinox,25,"Weekender")

binding.pry

puts "Gains!"
