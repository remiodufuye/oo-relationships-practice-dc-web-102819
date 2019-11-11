
class Ride

attr_reader :passenger, :driver, :distance 

@@all = []

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