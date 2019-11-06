
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


end 