
class Guest

    @@all = []

    attr_reader :name 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def trips
        Trip.all.select do |trip|
            trip.guest == self 
        end 
    end 

    # returns the number of trips a guest has taken
    def trip_count
        self.trips.length 
    end 

    def listings 
        self.trips.collect do |trip|
            trip.listing 
        end 
    end  

  # returns an array of all guests who have made over 1 trip
    def self.pro_traveller
        self.all.select do |new_guest|
            new_guest.trip_count > 1 
        end 
    end 

 # takes an argument of a name (as a string), returns the all guests with that name
    def self.find_all_by_name(name)

    end 

end 

