
class Guest

    @@all = []

    attr_reader :name 
    
    def initialize (name)
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
            guest.name == new_name
        end 
      end  

      def self.pro_traveller_help
        Trip.all.map do |trips|
            trips.guest.name 
        end 
      end 

      def self.pro_traveller
        pro_travel_hash = self.pro_traveller_help.reduce(Hash.new(0)) { |a, b| a[b] += 1; a }
        pro_travel_hash.select {|k,v| v > 1}
        # pro_travel_hash.collect{|k,v| pro_travel_hash[k]}
        pro_travel_hash.keys
      end 

 




end  