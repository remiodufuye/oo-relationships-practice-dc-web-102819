require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### CONSOLE TEST SEED FOR AIR B AND B STARTS HERE ###
# listing1 = Listing.new("Hollywood Hills" , "Los Angeles")
# listing2 = Listing.new("Brons Home" , "Los Angeles") 
# listing3 = Listing.new("Curry Home" , "Charlotte") 
# guest1 = Guest.new("Jack")
# guest2 = Guest.new("Jill") 
# guest3 = Guest.new("Barry") 
# guest4 = Guest.new("Barry") 
# trip1 = Trip.new(listing1,guest1)
# trip2 = Trip.new(listing2,guest2) 
# trip3 = Trip.new(listing1,guest2)
# trip4 = Trip.new(listing1,guest2)
# trip5 = Trip.new(listing3,guest1)
# trip6 = Trip.new(listing3,guest2) 
# trip7 = Trip.new(listing3,guest3)
# trip8 = Trip.new(listing1,guest3)
# trip9 = Trip.new(listing1,guest1)
# trip10 = Trip.new(listing2,guest2) 
# trip11 = Trip.new(listing1,guest2)
# trip12 = Trip.new(listing1,guest3) 
### CONSOLE TEST SEED FOR AIR B AND B ENDS  HERE ### 

#### CONSOLE TEST FOR LYFT BEGINS HERE ##############

mike = Driver.new("Mike")
james = Driver.new("James")
peter = Driver.new("Peter") 

john = Passenger.new("John")
ronnie = Passenger.new("Ronnie")
bobby = Passenger.new("Bobby")

ride1 = Ride.new(john,mike,10)
ride2 = Ride.new(ronnie,james,5) 
ride3 = Ride.new(bobby,peter,7)
ride4 = Ride.new(john,mike,2)

#### CONSOLE TEST FOR LYFT ENDS HERE ############

binding.pry
0  

