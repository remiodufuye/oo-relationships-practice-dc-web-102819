
class Passenger 

    attr_reader :name 

    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end 

    def rides
        Ride.all.select do |ride|
            ride.passenger == self 
        end 
    end 

    def drivers 
        self.rides.map do |ride|
        ride.driver 
        end 
    end 
 
    #helper for total distance 
     def total_array 
        self.rides.map do |ride|
            total = ride.distance  
        end 
     end 

    def total_distance
          self.total_array.inject(0){|sum,x| sum + x } 
    end  


  def self.all
    @@all 
  end  


end 