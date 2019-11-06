require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

##### LISTING ############

bigbro = Listing.new("Big Brother House" , "Los Angeles") 
safehouse  = Listing.new("Safe Haven" , "Los Angeles")
funfactory = Listing.new("Fun Factory" , "New Mexico") 

##### GUEST ######

yinca = Guest.new("Yinca")
remi = Guest.new("Remi")
bose = Guest.new("Bose") 


####### TRIPS ##########

trip1 = Trip.new(yinca , bigbro)
trip2 = Trip.new(remi , bigbro)
trip3 = Trip.new(bose, bigbro)
trip4 = Trip.new(yinca, safehouse)
trip4 = Trip.new(remi , funfactory) 

puts trip1.listing 



binding.pry
0