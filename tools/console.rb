require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

##### LISTING ############

bigbro = Listing.new("Big Brother House" , "Los Angeles") 
safehouse  = Listing.new("Safe Haven" , "Los Angeles")
funfactory = Listing.new("Fun Factory" , "New Mexico") 

##### GUEST ######


binding.pry
0