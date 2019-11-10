
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


  def self.most_popular 
    listing_count = []
    Trip.all.select do |trip|
      listing_count << trip.listing.trip_count 
    end 
    binding.pry 
    # listing_count.sort  
    # listing_count[-1]
  end 


  def self.all 
    @@all 
  end 



end 
