
class Listing 

     @@all = []

     attr_reader :name , :city 

    def initialize(name,city)
        @name = name 
        @city = city 
        @@all << self
    end


     def self.all
        @@all 
     end 
    
     def trips
        Trip.all.select do |trip|
            trip.listing == self 
        end 
     end 

     def guests
        self.trips.collect do |atrip|
            atrip.guest
        end  
     end 
    
     #returns the number of trips that have been taken to that listing
     def trip_count
        self.trips.length 
     end 

    # finds the listing that has had the most trips 
     def self.most_popular
        empty = []
        trip.all.select do |listing|
         empty << listing.trip_count 
        end 
        
     end 
  
  

end 