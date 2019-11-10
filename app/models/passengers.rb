
class Passenger 

    @@all = []

    attr_reader :name 

    def initialize(name)
        @name = name
        @@all<<self
    end 

    def rides
        Ride.all.select do |ride|
            ride.passenger == self 
        end 
    end 

  def self.all
    @@all 
  end 


end 