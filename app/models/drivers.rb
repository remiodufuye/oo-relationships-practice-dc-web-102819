
class Driver

        @@all = []

        attr_reader :name 

        def initialize(name)
            @name = name 
            @@all << self 
        end 

        def rides
            Ride.all.select do |ride|
                ride.driver == self 
            end 
        end 

        def passengers
            self.rides.map do |trip|
                trip.passenger
            end.uniq
        end 


        def self.all 
            @@all 
        end 
        

end 

