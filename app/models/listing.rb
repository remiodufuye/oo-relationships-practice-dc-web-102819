
class Listing 

  @@all = []

  attr_reader :name,:city 

  def initialize (name,city)
    @name = name
    @city = city 
    @@all << self 
  end 

  def trips
    Trip.all.select do |trip|
        trip.listing == self 
    end 
  end 

  def guests
    self.trips.map do |trip|
        trip.guest
    end 
  end 

  def trip_count 
    self.trips.length 
  end 


  def self.find_all_by_city(find_city)
    self.all.select do |list|
        list.city == find_city.to_s
    end 
  end  

 
   #helper method for the most popular method 
   def self.most_pop_help 
    Trip.all.map do |trip|
    trip.listing.name 
    end 
   end 


    def self.most_popular 
    most_pop_hash = self.most_pop_help.reduce(Hash.new(0)) { |a, b| a[b] += 1; a }
    most_pop_hash.keys.max
   end 


  def self.all 
    @@all 
  end 



end 
