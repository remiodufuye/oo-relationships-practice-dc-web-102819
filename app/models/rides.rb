
class Ride

@@all = []

attr_reader :passenger,:driver,:distance 

def initialize(passenger,driver,distance)
    @passenger = passenger 
    @driver = driver 
    @distance = distance.to_f
    @@all<<self 
end 


def self.all
    @@all 
end 



end 