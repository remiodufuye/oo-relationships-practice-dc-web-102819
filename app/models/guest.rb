
class Guest

    @@all = []
    
    def initialize(name)
        @name = name 
        @@all = self 
    end 

    def self.all
        @@all 
    end 

    def trips
        Trip.all.select do |trip|
            trip.guest == self 
        end 
    end 

    def listings
        self.trips.map do |trip|
            trip.listing 
        end.uniq
    end 

    def trip_count
        self.trips.length 
    end 

    def self.find_all_by_name(new_name)
        self.all.select do |guest|
            guest.name == new_name.to_s
        end 
      end  

 
#   def self.find_all_by_city(find_city)
#     self.all.select do |list|
#         list.city == find_city.to_s
#     end 
#   end  



end  