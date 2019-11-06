
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

end 

