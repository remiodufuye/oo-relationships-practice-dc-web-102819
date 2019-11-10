
class Guest

    @@all = []

    attr_reader :name 
    
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

end  